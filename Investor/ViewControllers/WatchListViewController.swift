//
//  WatchListViewController.swift
//  Investor
//
//  Created by Алексей Каземиров on 4/28/22.
//

//Watchlist из предыдущего таба

import UIKit

class WatchListViewController: UIViewController {

    override func viewDidLayoutSubviews() {
        Constants.gradientLayer.frame = CGRect(x: 0, y: 0, width: self.view.bounds.size.width, height: self.view.bounds.size.height)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setOptions()
        Constants.setGradient(view)
        //view.backgroundColor = #colorLiteral(red: 0.5308967829, green: 0.6930128336, blue: 1, alpha: 1)
        //view.backgroundColor = UIColor(named: "backgroundColor")
        //view.backgroundColor = .white
    }
    
    func setOptions() {
        self.navigationItem.title = "Watchlist"
    }
    

}
