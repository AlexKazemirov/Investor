//
//  IdeasViewController.swift
//  Investor
//
//  Created by Алексей Каземиров on 4/28/22.
//

import UIKit

class IdeasViewController: UIViewController {
    
    @IBOutlet weak var showStocks: UIButton!
    @IBOutlet weak var showPortfolios: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //view.backgroundColor = #colorLiteral(red: 0.5308967829, green: 0.6930128336, blue: 1, alpha: 1)
        //view.backgroundColor = UIColor(named: "backgroundColor")
        
    }
    
    
    
    @IBAction func showStocks(_ sender: UIButton) {
        performSegue(withIdentifier: "showStocks", sender: nil)
    }
    
    @IBAction func showPortfolios(_ sender: UIButton) {
        performSegue(withIdentifier: "showPortfolios", sender: nil)
    }
    
    
}

