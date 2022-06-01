//
//  TestViewController.swift
//  Investor
//
//  Created by Алексей Каземиров on 6/2/22.
//

import UIKit

class TestViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        Constants.setGradient(view)
    }

    @IBAction func showResults(_ sender: UIButton) {
        performSegue(withIdentifier: "toResults", sender: nil)
    }
}
