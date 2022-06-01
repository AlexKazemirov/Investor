//
//  EducationViewController.swift
//  Investor
//
//  Created by Алексей Каземиров on 4/28/22.
//

// Обучение для новичков (коллекцией список уроков как в тинькофф)

import UIKit

class EducationViewController: UIViewController {

    @IBOutlet weak var coursesCollectionView: UICollectionView! {
        didSet {
            coursesCollectionView.backgroundColor = .clear
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Constants.setGradient(view)

    }

}
