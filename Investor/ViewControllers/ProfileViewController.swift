//
//  ProfileViewController.swift
//  Investor
//
//  Created by Алексей Каземиров on 4/28/22.
//

import UIKit

class ProfileViewController: UIViewController {

    var gradientLayer: CAGradientLayer! {
        didSet {
            gradientLayer.startPoint = CGPoint(x: 0, y: 0)
            gradientLayer.endPoint = CGPoint(x: 1, y: 1)
            let startColor = #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1).cgColor
            let endColor = #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1).cgColor
            gradientLayer.colors = [startColor, endColor]
        }
    }
    
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
        gradientLayer.frame = CGRect(x: 0, y: 0, width: self.view.bounds.size.width, height: self.view.bounds.size.height)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        gradientLayer = CAGradientLayer()
        view.layer.insertSublayer(gradientLayer, at: 0)
        
        setupConstraints()
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
    
    @IBAction func settingsBtn(_ sender: Any) {
        
    }
    
    @IBAction func unwind( _ seg: UIStoryboardSegue) {
    }
}
