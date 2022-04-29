//
//  IdeasViewController.swift
//  Investor
//
//  Created by Алексей Каземиров on 4/28/22.
//

import UIKit

class IdeasViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.5308967829, green: 0.6930128336, blue: 1, alpha: 1)
        
        setupTextFields()
        
        settingsTabBar()
    }
    
    func setupTextFields() {
        let loginTextField = UITextField()
        let passwordTextField = UITextField()
        passwordTextField.isSecureTextEntry = true
        
        loginTextField.backgroundColor = .white
        loginTextField.layer.cornerRadius = 13
        passwordTextField.backgroundColor = .white
        passwordTextField.layer.cornerRadius = 13
        view.addSubview(loginTextField)
        view.addSubview(passwordTextField)
        loginTextField.translatesAutoresizingMaskIntoConstraints = false
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        
        let heightAnchor = loginTextField.heightAnchor.constraint(equalToConstant: 40)
        let topAnchor = loginTextField.topAnchor.constraint(equalTo: view.topAnchor,constant: 200)
        let leftAnchor = loginTextField.leftAnchor.constraint(equalTo: view.leftAnchor,constant: 30)
        let rightAnchor = loginTextField.rightAnchor.constraint(equalTo: view.rightAnchor,constant: -30)
        
        let heightPass = passwordTextField.heightAnchor.constraint(equalToConstant: heightAnchor.constant)
        let topPass = passwordTextField.topAnchor.constraint(equalTo: loginTextField.bottomAnchor,constant: 50)
        let leftPass = passwordTextField.leftAnchor.constraint(equalTo: loginTextField.leftAnchor, constant: 0)
        let rightPass = passwordTextField.rightAnchor.constraint(equalTo: loginTextField.rightAnchor,constant: 0)
        NSLayoutConstraint.activate([topAnchor, rightAnchor, leftAnchor, heightAnchor, heightPass, topPass, leftPass, rightPass])
        
        loginTextField.placeholder = "Login"
        passwordTextField.placeholder = "Password"
    }

    func settingsTabBar() {
        tabBarController?.tabBar.tintColor = .white
        tabBarController?.tabBar.unselectedItemTintColor = .black
        tabBarController?.tabBar.backgroundColor = .systemPurple
        tabBarController?.tabBar.alpha = 0.5
    }
    
}
