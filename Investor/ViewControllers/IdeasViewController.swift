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
            
            stocksBtn.setTitle("Рекомендуемые акции", for: .normal)
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
            
            portfoliosBtn.setTitle("Варианты портфелей", for: .normal)
            portfoliosBtn.tintColor = .white
            portfoliosBtn.layer.cornerRadius = 10
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func showStocks(_ sender: UIButton) {
        performSegue(withIdentifier: "showStocks", sender: nil)
    }
    
    @IBAction func showPortfolios(_ sender: UIButton) {
        performSegue(withIdentifier: "showPortfolios", sender: nil)
    }
    
    
}
