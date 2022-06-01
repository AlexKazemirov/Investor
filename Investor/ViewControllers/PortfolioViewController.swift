//
//  PortfolioViewController.swift
//  Investor
//
//  Created by Алексей Каземиров on 6/2/22.
//

import UIKit

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
        cell.nameLbl.translatesAutoresizingMaskIntoConstraints = false
        cell.costLbl.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            cell.nameLbl.centerXAnchor.constraint(equalTo: cell.centerXAnchor),
            cell.nameLbl.centerYAnchor.constraint(equalTo: cell.centerYAnchor, constant: -20),
            cell.costLbl.centerXAnchor.constraint(equalTo: cell.nameLbl.centerXAnchor),
            cell.costLbl.centerYAnchor.constraint(equalTo: cell.nameLbl.centerYAnchor, constant: 40)
        ])
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let size = self.view.frame.width * 0.7
        return CGSize(width: size, height: size)
    }
    
    
   
    
    
}
