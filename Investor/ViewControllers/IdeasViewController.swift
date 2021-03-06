//
//  IdeasViewController.swift
//  Investor
//
//  Created by Алексей Каземиров on 4/28/22.
//

import UIKit

class IdeasViewController: UIViewController {
    
    @IBOutlet weak var stocksBtn: UIButton! {
        didSet {
            stocksBtn.backgroundColor = .blue
            stocksBtn.layer.shadowOffset = CGSize(width: 0, height: 5)
            stocksBtn.layer.shadowOpacity = 0.5
            stocksBtn.layer.shadowRadius = 5
            
            stocksBtn.setTitle("Подобрать акции", for: .normal)
            stocksBtn.tintColor = .white
            stocksBtn.layer.cornerRadius = 10
        }
    }
    
    @IBOutlet weak var portfoliosBtn: UIButton! {
        didSet {
            portfoliosBtn.backgroundColor = .purple
            portfoliosBtn.layer.shadowOffset = CGSize(width: 0, height: 5)
            portfoliosBtn.layer.shadowOpacity = 0.5
            portfoliosBtn.layer.shadowRadius = 5
            
            portfoliosBtn.setTitle("Собрать портфель", for: .normal)
            portfoliosBtn.tintColor = .white
            portfoliosBtn.layer.cornerRadius = 10
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Constants.setGradient(view)
        
        setupConstraints()
        
    }
    
    @IBAction func showStocks(_ sender: UIButton) {
        performSegue(withIdentifier: "showStocks", sender: nil)
    }
    
    @IBAction func showPortfolios(_ sender: UIButton) {
        performSegue(withIdentifier: "showPortfolios", sender: nil)
    }
    
    func setupConstraints() {
        stocksBtn.translatesAutoresizingMaskIntoConstraints = false
        portfoliosBtn.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            stocksBtn.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -60),
            stocksBtn.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 70),
            stocksBtn.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -70),
            //stocksBtn.topAnchor.constraint(equalTo: view.topAnchor, constant: 300),
            stocksBtn.heightAnchor.constraint(equalToConstant: 60),
            
            portfoliosBtn.leftAnchor.constraint(equalTo: stocksBtn.leftAnchor),
            portfoliosBtn.rightAnchor.constraint(equalTo: stocksBtn.rightAnchor),
            portfoliosBtn.topAnchor.constraint(equalTo: stocksBtn.bottomAnchor, constant: 60),
            portfoliosBtn.heightAnchor.constraint(equalTo: stocksBtn.heightAnchor)
        ])
    }
}
