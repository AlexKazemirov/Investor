//
//  Constants.swift
//  Investor
//
//  Created by Алексей Каземиров on 5/24/22.
//

import Foundation
import UIKit

struct Constants {
    
    //    static var gradientLayer: CAGradientLayer! {
    //        didSet {
    //            gradientLayer.startPoint = CGPoint(x: 0, y: 0)
    //            gradientLayer.endPoint = CGPoint(x: 1, y: 1)
    //            let startColor = #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1).cgColor
    //            let endColor = #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1).cgColor
    //            gradientLayer.colors = [startColor, endColor]
    //        }
    //    }
    static func setGradient(_ view: UIView, startColor: UIColor = #colorLiteral(red: 0.6470617056, green: 0.5934089422, blue: 1, alpha: 1), endColor: UIColor = #colorLiteral(red: 0.0999873206, green: 0.1936445236, blue: 1, alpha: 1)) {
        let colorTop =  startColor.cgColor
        let colorBottom = endColor.cgColor
        
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [colorTop, colorBottom]
        gradientLayer.locations = [0.0, 1.0]
        gradientLayer.frame = view.bounds
        
        view.layer.insertSublayer(gradientLayer, below: view.layer.sublayers?.first)
        
    }
    
    
}
