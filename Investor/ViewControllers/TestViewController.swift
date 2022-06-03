//
//  TestViewController.swift
//  Investor
//
//  Created by Алексей Каземиров on 6/2/22.
//

import UIKit
import Foundation
import GoogleSignIn

class TestViewController: UIViewController, GIDSignInDelegate {
    func sign(_ signIn: GIDSignIn!, didSignInFor user: GIDGoogleUser!, withError error: Error!) {
        <#code#>
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        Constants.setGradient(view)
        
        GIDSignIn.sharedInstance().delegate = self
        //GIDSignIn.sharedInstance().clientID =
    }

    @IBAction func showResults(_ sender: UIButton) {
        performSegue(withIdentifier: "toResults", sender: nil)
    }
}
