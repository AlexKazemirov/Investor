//
//  EducationViewController.swift
//  Investor
//
//  Created by Алексей Каземиров on 4/28/22.
//

import UIKit

class EducationViewController: UIViewController {

    override func viewDidLayoutSubviews() {
        Constants.gradientLayer.frame = CGRect(x: 0, y: 0, width: self.view.bounds.size.width, height: self.view.bounds.size.height)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Constants.gradientLayer = CAGradientLayer()
        view.layer.insertSublayer(Constants.gradientLayer, at: 0)
        //view.backgroundColor = .systemGray4

    }

}
