//
//  TabBarController.swift
//  Investor
//
//  Created by Алексей Каземиров on 5/1/22.
//

import UIKit

class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        settingsTabBar()
    }
    
    
    func settingsTabBar() {
        tabBar.tintColor = #colorLiteral(red: 1, green: 0.8495922685, blue: 0.2030095756, alpha: 1)
        tabBar.unselectedItemTintColor = .white
        tabBar.backgroundColor = .white

        let lineView = UIView(frame: CGRect(x: 0, y: 0, width: tabBar.frame.size.width, height: 2))
        lineView.backgroundColor = .white
        tabBar.addSubview(lineView)
        
    }
}
