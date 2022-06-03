//
//  PortfolioCollectionViewCell.swift
//  Investor
//
//  Created by Алексей Каземиров on 6/2/22.
//

import UIKit
import WebKit

class PortfolioCollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var costLbl: UILabel!
    @IBOutlet weak var logoStock: UIImageView!
    
    static let identifier = "portfolioCell"
    
}
