//
//  ProfileViewController.swift
//  Investor
//
//  Created by Алексей Каземиров on 4/28/22.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var registrationButton: UIButton!
    @IBOutlet weak var imageProfile: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //view.backgroundColor = #colorLiteral(red: 0.5308967829, green: 0.6930128336, blue: 1, alpha: 1)
        //view.backgroundColor = UIColor(named: "backgroundColor")
        
        setupView()
        setupConstraints()
    }
    

    @IBAction func registrationButton(_ sender: UIButton) {

        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let newViewController = storyboard.instantiateViewController(withIdentifier: "AuthViewController") as! AuthViewController
                self.present(newViewController, animated: true, completion: nil)
    }
    
    func setupView() {
        imageProfile.image = UIImage(named: "userImage")
        
        registrationButton.backgroundColor = .gray
        registrationButton.setTitle("Регистрация", for: .normal)
        registrationButton.tintColor = .white
        registrationButton.layer.cornerRadius = 10
        registrationButton.layer.borderWidth = 1
        registrationButton.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
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
    
    @IBAction func unwind( _ seg: UIStoryboardSegue) {
    }
}
