//
//  TestViewController.swift
//  Investor
//
//  Created by Алексей Каземиров on 6/2/22.
//

import UIKit
import Foundation

class TestViewController: UIViewController{
    

    override func viewDidLoad() {
        super.viewDidLoad()

        Constants.setGradient(view)
        
        //GIDSignIn.sharedInstance().delegate = self
        //GIDSignIn.sharedInstance().clientID = "99997905218-ju1qei0hjpqikd0c8ut3j64q5fbuvkd7.apps.googleusercontent.com"
    }
    

    @IBAction func showResults(_ sender: UIButton) {
        performSegue(withIdentifier: "toResults", sender: nil)
    }
}
