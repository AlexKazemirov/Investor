//
//  IdeasViewController.swift
//  Investor
//
//  Created by Алексей Каземиров on 4/28/22.
//

import UIKit

class IdeasViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.5308967829, green: 0.6930128336, blue: 1, alpha: 1)
        
        
        
        settingsTabBar()
    }
    
    
    
    func settingsTabBar() {
        tabBarController?.tabBar.tintColor = .white
        tabBarController?.tabBar.unselectedItemTintColor = .black
        tabBarController?.tabBar.backgroundColor = .systemPurple
        tabBarController?.tabBar.alpha = 0.5
    }
    
}

