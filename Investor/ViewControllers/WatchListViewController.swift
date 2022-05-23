//
//  WatchListViewController.swift
//  Investor
//
//  Created by Алексей Каземиров on 4/28/22.
//

import UIKit

class WatchListViewController: UIViewController {

    var gradientLayer: CAGradientLayer! {
        didSet {
            gradientLayer.startPoint = CGPoint(x: 0, y: 0)
            gradientLayer.endPoint = CGPoint(x: 1, y: 1)
            let startColor = #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1).cgColor
            let endColor = #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1).cgColor
            gradientLayer.colors = [startColor, endColor]
        }
    }
    
    override func viewDidLayoutSubviews() {
        gradientLayer.frame = CGRect(x: 0, y: 0, width: self.view.bounds.size.width, height: self.view.bounds.size.height)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        gradientLayer = CAGradientLayer()
        view.layer.insertSublayer(gradientLayer, at: 0)

        //view.backgroundColor = #colorLiteral(red: 0.5308967829, green: 0.6930128336, blue: 1, alpha: 1)
        //view.backgroundColor = UIColor(named: "backgroundColor")
        //view.backgroundColor = .white
    }
    

}
