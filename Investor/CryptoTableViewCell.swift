//
//  CryptoTableViewCell.swift
//  Investor
//
//  Created by Алексей Каземиров on 4/15/22.
//

import UIKit

class CryptoTableViewCell: UITableViewCell {

    @IBOutlet weak var tickerLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var logoLabel: UIImageView!
    @IBOutlet weak var priceLabel: UILabel!
    
    override func prepareForReuse() {
        super.prepareForReuse()
        tickerLabel.text = nil
        nameLabel.text = nil
        logoLabel.image = nil
        priceLabel.text = nil
    }
    
    static let identifier = "CryptoTableViewCell"
    
    func configure(with viewModel: CryptoList) {
        nameLabel.text = viewModel.name
        tickerLabel.text = viewModel.symbol!.uppercased()
        priceLabel.text = String(viewModel.current_price!)
        if let url = URL(string: "\(viewModel.image!)") {
            let task = URLSession.shared.dataTask(with: url) { [weak self] data, _, _ in
                if let data = data {
                    DispatchQueue.main.async {
                        self?.logoLabel.image = UIImage(data: data)
                    }
                }
            }
            task.resume()
        }
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}