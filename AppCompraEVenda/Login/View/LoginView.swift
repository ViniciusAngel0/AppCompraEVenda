//
//  LoginView.swift
//  AppCompraEVenda
//
//  Created by Vinicius Angelo on 21/07/22.
//

import Foundation
import UIKit

class LoginView: UIViewController {
    
    let homeView = HomeView()
    let baseTabBarView = BaseTabBarView()
    
    //MARK:  - ViewElements
    
    lazy var logoImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "Logo1")
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    lazy var emailTextField: UITextField = {
        let text = UITextField()
        text.placeholder = "E-mail"
        text.autocorrectionType = .no
        text.keyboardType = .emailAddress
        text.clearButtonMode = .always
        text.layer.cornerRadius = 5
        text.clipsToBounds = true
        text.layer.borderColor = UIColor.systemGray4.cgColor
        text.layer.borderWidth = 1
        text.borderStyle = .roundedRect
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    
    lazy var passwordTextField: UITextField = {
        let text = UITextField()
        text.placeholder = "Senha"
        text.keyboardType = .default
        text.clearButtonMode = .always
        text.layer.cornerRadius = 5
        text.clipsToBounds = true
        text.layer.borderColor = UIColor.systemGray4.cgColor
        text.layer.borderWidth = 1
        text.borderStyle = .roundedRect
        text.isSecureTextEntry = true
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    
    lazy var loginButton: UIButton = {
        let button = UIButton()
        button.setTitle("ENTRAR", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.clipsToBounds = true
        button.layer.cornerRadius = 10
        button.backgroundColor = #colorLiteral(red: 0.137254902, green: 0.7098039216, blue: 0.7098039216, alpha: 1)
        button.addTarget(self, action: #selector(loginButtonTap), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    
    
    //MARK: - SETUP
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupLayoutConstraints()
        setupAdditionalConfiguration()
    }
    
    //SetupView
    private func setupView() {
        view.addSubview(logoImage)
        view.addSubview(emailTextField)
        view.addSubview(passwordTextField)
        view.addSubview(loginButton)
        
    }
    
    private func setupAdditionalConfiguration () {
        view.backgroundColor = .systemBackground
    }
    
    //Constraits
    private func setupLayoutConstraints() {
        NSLayoutConstraint.activate([
            
            logoImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logoImage.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: 10),
            logoImage.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.4),
            logoImage.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.1),
            
            emailTextField.topAnchor.constraint(equalTo: logoImage.bottomAnchor, constant: 40),
            emailTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            emailTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 10),
            passwordTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            passwordTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            loginButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -40),
            loginButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            loginButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            loginButton.heightAnchor.constraint(equalToConstant: 50)
            
            
        ])
    }
    
    @objc func loginButtonTap() {
        
        navigationController?.pushViewController(baseTabBarView, animated: true)
        
    }
    
    
}
