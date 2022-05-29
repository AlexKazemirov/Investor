//
//  AuthViewController.swift
//  Investor
//
//  Created by Алексей Каземиров on 4/30/22.
//

import UIKit

class AuthViewController: UIViewController {

    @IBOutlet weak var btnOk: UIButton! {
        didSet {
            btnOk.backgroundColor = .white
            btnOk.layer.cornerRadius = 10
            btnOk.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            btnOk.layer.borderWidth = 2
            btnOk.setTitle("Go!", for: .normal)
            
            btnOk.layer.shadowRadius = 5
            btnOk.layer.shadowOffset = CGSize(width: 0, height: 5)
            btnOk.layer.shadowOpacity = 0.5
        }
    }
    var loginTextField = UITextField() {
        didSet {
    
        }
    }
    var passwordTextField = UITextField() {
        didSet {
            
        }
    }
    var titleLbl = UILabel() {
        didSet {
            titleLbl.text = "Register your account!"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        
        loginTextField.setOptions(bgColor: .white, cornerRadius: 10, placeholder: "Login", isSecureText: false)
        loginTextField.indent(size: 10)
        setupTextFields()
        
        Constants.setGradient(view, startColor: .yellow, endColor: .black)
    }
    
    func setupTextFields() {
        //MARK: LoginTF
        
        
        view.addSubview(titleLbl)
        titleLbl.translatesAutoresizingMaskIntoConstraints = false
        titleLbl.center = btnOk.center
  
        view.addSubview(loginTextField)
        
        loginTextField.translatesAutoresizingMaskIntoConstraints = false
        
        let heightAnchor = loginTextField.heightAnchor.constraint(equalToConstant: 40)
        let topAnchor = loginTextField.topAnchor.constraint(equalTo: view.topAnchor,constant: 200)
        let leftAnchor = loginTextField.leftAnchor.constraint(equalTo: view.leftAnchor,constant: 30)
        let rightAnchor = loginTextField.rightAnchor.constraint(equalTo: view.rightAnchor,constant: -30)
        
        //MARK: PassTF
        
        passwordTextField.setOptions(bgColor: .white, cornerRadius: 10, placeholder: "Password", isSecureText: true)
        passwordTextField.indent(size: 10)
        
        view.addSubview(passwordTextField)
        
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        
        let heightPass = passwordTextField.heightAnchor.constraint(equalToConstant: heightAnchor.constant)
        let topPass = passwordTextField.topAnchor.constraint(equalTo: loginTextField.bottomAnchor,constant: 30)
        let leftPass = passwordTextField.leftAnchor.constraint(equalTo: loginTextField.leftAnchor, constant: 0)
        let rightPass = passwordTextField.rightAnchor.constraint(equalTo: loginTextField.rightAnchor,constant: 0)
        
        
        NSLayoutConstraint.activate([topAnchor, rightAnchor, leftAnchor, heightAnchor, heightPass, topPass, leftPass, rightPass])
        
        //title
        
        let topLbl = titleLbl.bottomAnchor.constraint(equalTo: loginTextField.topAnchor, constant: -50)
        let leftLbl = titleLbl.leftAnchor.constraint(equalTo: loginTextField.leftAnchor, constant: 30)
        let rightLbl = titleLbl.rightAnchor.constraint(equalTo: loginTextField.rightAnchor,constant: -30)
        titleLbl.textAlignment = .center
        
        NSLayoutConstraint.activate([topLbl, leftLbl, rightLbl])
        
        btnOk.translatesAutoresizingMaskIntoConstraints = false

        let heightBtn = btnOk.heightAnchor.constraint(equalToConstant: 30)
        let leftBtn = btnOk.leftAnchor.constraint(equalTo: passwordTextField.leftAnchor, constant: 110)
        let rightBtn = btnOk.rightAnchor.constraint(equalTo: passwordTextField.rightAnchor,constant: -110)
        let topBtn = btnOk.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor,constant: 50)
        
        
        NSLayoutConstraint.activate([heightBtn, leftBtn, rightBtn, topBtn])
    }
    
    @IBAction func btnOk(_ sender: UIButton) {
        guard let login = loginTextField.text, let password = passwordTextField.text else {return}
        dismiss(animated: true, completion: nil)
    }

}

extension UITextField {
    
    func indent(size: CGFloat) {
        self.leftView = UIView(frame: CGRect(x: self.frame.minX, y: self.frame.minY, width: size, height: self.frame.height))
        self.leftViewMode = .always
    }
    
    func setOptions(bgColor: UIColor, cornerRadius: CGFloat, placeholder: String, isSecureText: Bool){
        Constants.setGradient(self)
        self.backgroundColor = bgColor
        self.layer.cornerRadius = cornerRadius
        self.placeholder = placeholder
        self.isSecureTextEntry = isSecureText
        self.layer.borderWidth = 1.5
        self.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
    }
    
}

