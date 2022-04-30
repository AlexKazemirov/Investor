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
        
        //MARK: LoginTF
        let loginTextField = UITextField()
        
        loginTextField.setOptions(bgColor: .white, cornerRadius: 10, placeholder: "Login", isSecureText: false)
        loginTextField.indent(size: 10)
        
        view.addSubview(loginTextField)
        
        loginTextField.translatesAutoresizingMaskIntoConstraints = false
        
        let heightAnchor = loginTextField.heightAnchor.constraint(equalToConstant: 40)
        let topAnchor = loginTextField.topAnchor.constraint(equalTo: view.topAnchor,constant: 200)
        let leftAnchor = loginTextField.leftAnchor.constraint(equalTo: view.leftAnchor,constant: 30)
        let rightAnchor = loginTextField.rightAnchor.constraint(equalTo: view.rightAnchor,constant: -30)
        
        //MARK: PassTF
        
        let passwordTextField = UITextField()
        
        passwordTextField.setOptions(bgColor: .white, cornerRadius: 10, placeholder: "Password", isSecureText: true)
        passwordTextField.indent(size: 10)
        
        view.addSubview(passwordTextField)
        
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        
        let heightPass = passwordTextField.heightAnchor.constraint(equalToConstant: heightAnchor.constant)
        let topPass = passwordTextField.topAnchor.constraint(equalTo: loginTextField.bottomAnchor,constant: 50)
        let leftPass = passwordTextField.leftAnchor.constraint(equalTo: loginTextField.leftAnchor, constant: 0)
        let rightPass = passwordTextField.rightAnchor.constraint(equalTo: loginTextField.rightAnchor,constant: 0)
        
        NSLayoutConstraint.activate([topAnchor, rightAnchor, leftAnchor, heightAnchor, heightPass, topPass, leftPass, rightPass])
    }
    
    func settingsTabBar() {
        tabBarController?.tabBar.tintColor = .white
        tabBarController?.tabBar.unselectedItemTintColor = .black
        tabBarController?.tabBar.backgroundColor = .systemPurple
        tabBarController?.tabBar.alpha = 0.5
    }
    
}

extension UITextField {
    
    func indent(size: CGFloat) {
        self.leftView = UIView(frame: CGRect(x: self.frame.minX, y: self.frame.minY, width: size, height: self.frame.height))
        self.leftViewMode = .always
    }
    
    func setOptions(bgColor: UIColor, cornerRadius: CGFloat, placeholder: String, isSecureText: Bool){
        self.backgroundColor = bgColor
        self.layer.cornerRadius = cornerRadius
        self.placeholder = placeholder
        self.isSecureTextEntry = isSecureText
        self.layer.borderWidth = 1.5
        self.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
    }
    
}
