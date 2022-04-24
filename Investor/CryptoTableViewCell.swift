//
//  CryptoTableViewCell.swift
//  Investor
//
//  Created by Алексей Каземиров on 4/15/22.
//

import UIKit

struct CryptoTableViewCellViewModel {
    let current_price: Double
    let symbol: String
    let name: String
    let image: String
    var isFavorite: Bool
    var markIsHidden: Bool
}

class CryptoTableViewCell: UITableViewCell {

    @IBOutlet weak var tickerLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var logoLabel: UIImageView!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var favoriteMark: UIImageView!
    
    override func prepareForReuse() {
        super.prepareForReuse()
        tickerLabel.text = nil
        nameLabel.text = nil
        logoLabel.image = nil
        priceLabel.text = nil
        favoriteMark.isHidden = true
        favoriteMark.image = nil
    }
    
    static let identifier = "CryptoTableViewCell"
    
    func configure(with viewModel: CryptoTableViewCellViewModel) {
        
        favoriteMark.isHidden = viewModel.markIsHidden
        favoriteMark.image = UIImage(named: "heartIcon")
        
        nameLabel.text = viewModel.name
        tickerLabel.text = viewModel.symbol.uppercased()
        priceLabel.text = String(viewModel.current_price)
        if let url = URL(string: "\(viewModel.image)") {
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
    
    

}
