//
//  TabBarController.swift
//  Investor
//
//  Created by Алексей Каземиров on 5/1/22.
//

import UIKit
import SwiftUI

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        settingsTabBar()
    }
    
    
    func settingsTabBar() {
        tabBar.tintColor = .blue
        tabBar.unselectedItemTintColor = .black
        tabBar.backgroundColor = .white

        let lineView = UIView(frame: CGRect(x: 0, y: 0, width: tabBar.frame.size.width, height: 1))
        lineView.backgroundColor = .black
        tabBar.addSubview(lineView)
        tabBar.alpha = 1
        
    }
}
