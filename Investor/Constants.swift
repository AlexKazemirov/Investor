//
//  Constants.swift
//  Investor
//
//  Created by Алексей Каземиров on 5/24/22.
//

import Foundation
import UIKit

struct Constants {
    
    static var gradientLayer: CAGradientLayer! {
        didSet {
            gradientLayer.startPoint = CGPoint(x: 0, y: 0)
            gradientLayer.endPoint = CGPoint(x: 1, y: 1)
            let startColor = #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1).cgColor
            //let startColor = #colorLiteral(red: 0.4680554867, green: 0.6130600572, blue: 0.9608685374, alpha: 1).cgColor
            let endColor = #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1).cgColor
            gradientLayer.colors = [startColor, endColor]
        }
    }
    static func setGradient(view: UIView, viewController: UIViewController) {
        Constants.gradientLayer = CAGradientLayer()
        view.layer.insertSublayer(Constants.gradientLayer, at: 0)
        func viewDidLayoutSubviews() {
            Constants.gradientLayer.frame = CGRect(x: 0, y: 0, width: view.bounds.size.width, height: view.bounds.size.height)
        }
    }
    
    
}
