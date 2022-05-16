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
        
        //view.backgroundColor = #colorLiteral(red: 0.9032096267, green: 0.9032096267, blue: 0.9032096267, alpha: 1)
//        gradient.frame = view.bounds
//        view.layer.addSublayer(gradient)
        //UIImage(named: "bgMoneyImage")
        //view.backgroundColor = #colorLiteral(red: 0.5308967829, green: 0.6930128336, blue: 1, alpha: 1)
        //view.backgroundColor = UIColor(named: "backgroundColor")
        
    }
    
    lazy var gradient: CAGradientLayer = {
        let gradient = CAGradientLayer()
        gradient.type = .axial
        gradient.colors = [
            UIColor.white.cgColor,
            UIColor.blue.cgColor,
            UIColor.black.cgColor                       
            //            UIColor.red.cgColor,
            //            UIColor.purple.cgColor,
            //            UIColor.cyan.cgColor
        ]
        gradient.locations = [0, 0.5, 1]
        return gradient
    }()
    
    @IBAction func showStocks(_ sender: UIButton) {
        performSegue(withIdentifier: "showStocks", sender: nil)
    }
    
    @IBAction func showPortfolios(_ sender: UIButton) {
        performSegue(withIdentifier: "showPortfolios", sender: nil)
    }
    
    
}

