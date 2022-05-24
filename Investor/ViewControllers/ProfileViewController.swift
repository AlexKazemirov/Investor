//
//  ProfileViewController.swift
//  Investor
//
//  Created by Алексей Каземиров on 4/28/22.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var registrationButton: UIButton! {
        didSet {
            registrationButton.backgroundColor = .green
            registrationButton.layer.shadowOffset = CGSize(width: 0, height: 5)
            registrationButton.layer.shadowOpacity = 0.5
            registrationButton.layer.shadowRadius = 5
            
            registrationButton.setTitle("Регистрация", for: .normal)
            registrationButton.tintColor = .black
            registrationButton.layer.cornerRadius = 10
        }
    }
    @IBOutlet weak var imageProfile: UIImageView! {
        didSet {
            imageProfile.image = UIImage(named: "userImage")
        }
    }
    
    override func viewDidLayoutSubviews() {
        Constants.gradientLayer.frame = CGRect(x: 0, y: 0, width: self.view.bounds.size.width, height: self.view.bounds.size.height)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Constants.gradientLayer = CAGradientLayer()
        view.layer.insertSublayer(Constants.gradientLayer, at: 0)
        
        setupConstraints()
    }
    
    @IBAction func unwind( _ seg: UIStoryboardSegue) {
    }

    func setupConstraints() {
        
        imageProfile.translatesAutoresizingMaskIntoConstraints = false

        let heightImage = imageProfile.heightAnchor.constraint(equalToConstant: 110)
        let widthImage = imageProfile.widthAnchor.constraint(equalToConstant: 110)
        let topImage = imageProfile.topAnchor.constraint(equalTo: view.topAnchor,constant: 100)
        let xImage = imageProfile.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0)

        
        registrationButton.translatesAutoresizingMaskIntoConstraints = false
       
        let topRegBtn = registrationButton.topAnchor.constraint(equalTo: imageProfile.bottomAnchor, constant: 50)
        let xRegBtn = registrationButton.centerXAnchor.constraint(equalTo: imageProfile.centerXAnchor, constant: 0)
        
        NSLayoutConstraint.activate([heightImage, widthImage, topImage, xImage, topRegBtn, xRegBtn])
    }
    
    
    @IBAction func registrationButton(_ sender: UIButton) {

        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let newViewController = storyboard.instantiateViewController(withIdentifier: "AuthViewController") as! AuthViewController
                self.present(newViewController, animated: true, completion: nil)
    }
}
