//
//  PortfolioViewController.swift
//  Investor
//
//  Created by Алексей Каземиров on 6/2/22.
//

import UIKit
import Kingfisher
import Foundation

class PortfolioViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView! {
        didSet {
            collectionView.backgroundColor = .clear
        }
    }
    
    var portfolios: [Portfolio] = []
    let a = Portfolio(name: "1", image: nil, cost: 50)
    let b = Portfolio(name: "2", image: nil, cost: 100)
    let c = Portfolio(name: "3", image: nil, cost: 300)

    override func viewDidLoad() {
        super.viewDidLoad()

        portfolios = [a, b, c]
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        Constants.setGradient(view)

        let url = URL(string: "https://finnhub.io/api/v1/stock/profile2?symbol=ADBE&token=cacjqliad3i0nrodg59g")

        var request = URLRequest(url: url!)

        request.addValue("application/json", forHTTPHeaderField: "Accept")
        let task = URLSession.shared.dataTask(with: url!) { data, response, error in
            guard error == nil else {
                print(error!)
                return
            }
            guard let data = data else {
                print("Data is empty")
                return
            }

            let json = try! JSONSerialization.jsonObject(with: data, options: [])
            print(json)
        }

        task.resume()
    }
    
    func getData(from url: URL, completion: @escaping (Data?, URLResponse?, Error?) -> ()) {
        URLSession.shared.dataTask(with: url, completionHandler: completion).resume()
    }
    
    
}

extension PortfolioViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = self.collectionView.dequeueReusableCell(withReuseIdentifier: PortfolioCollectionViewCell.identifier, for: indexPath) as! PortfolioCollectionViewCell
        cell.backgroundColor = .systemYellow
        cell.nameLbl.text = portfolios[indexPath.row].name
        cell.costLbl.text = "\(portfolios[indexPath.row].cost)"
        let path: String = "https://static.finnhub.io/logo/9b4b19c2-80df-11ea-becf-00000000092a.png"
        cell.logoStock.kf.setImage(with: URL(string: path), placeholder: nil, options: nil, completionHandler: nil)
       
        cell.nameLbl.translatesAutoresizingMaskIntoConstraints = false
        cell.costLbl.translatesAutoresizingMaskIntoConstraints = false
        cell.logoStock.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            cell.nameLbl.centerXAnchor.constraint(equalTo: cell.centerXAnchor),
            cell.nameLbl.centerYAnchor.constraint(equalTo: cell.centerYAnchor, constant: -40),
            cell.costLbl.centerXAnchor.constraint(equalTo: cell.nameLbl.centerXAnchor),
            cell.costLbl.centerYAnchor.constraint(equalTo: cell.nameLbl.centerYAnchor, constant: 20),
            cell.logoStock.centerXAnchor.constraint(equalTo: cell.costLbl.centerXAnchor),
            cell.logoStock.centerYAnchor.constraint(equalTo: cell.costLbl.centerYAnchor, constant: 80),
            cell.logoStock.widthAnchor.constraint(equalTo: cell.widthAnchor, constant: -80)
        ])
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let size = self.view.frame.width * 0.7
        return CGSize(width: size, height: size)
    }
    
    
   
    
    
}
