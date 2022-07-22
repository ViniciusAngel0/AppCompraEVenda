//
//  FirstScreenView.swift
//  AppCompraEVenda
//
//  Created by Vinicius Angelo on 18/07/22.
//

import Foundation
import UIKit

class FirstScreenView: UIViewController {
    
    let loginView = LoginView()
    let registerView = RegisterView()


   //MARK:  - ViewElements
    
    lazy var logoImage: UIImageView = {
       let image = UIImageView()
        image.image = UIImage(named: "Logo1")
        image.contentMode = .scaleAspectFill
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    lazy var subTitleLabel: UILabel = {
        let label = UILabel()
        label.text = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s"
        label.numberOfLines = 0
        label.textAlignment = .center
        label.textColor = .gray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var loginButton: UIButton = {
       let button = UIButton()
        button.setTitle("ENTRAR", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.clipsToBounds = true
        button.layer.cornerRadius = 10
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.systemGray4.cgColor
        button.addTarget(self, action: #selector(loginButtonTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var registerButton: UIButton = {
       let button = UIButton()
        button.setTitle("CADASTRE-SE", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.clipsToBounds = true
        button.layer.cornerRadius = 10
        button.backgroundColor = #colorLiteral(red: 0.137254902, green: 0.7098039216, blue: 0.7098039216, alpha: 1)
        button.addTarget(self, action: #selector(registerButtonTapped), for: .touchUpInside)
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
        view.addSubview(subTitleLabel)
        view.addSubview(loginButton)
        view.addSubview(registerButton)
    }
    
    private func setupAdditionalConfiguration () {
        view.backgroundColor = .systemBackground
    }
 
    //Constraits
    private func setupLayoutConstraints() {
        NSLayoutConstraint.activate([

            logoImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logoImage.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: -60),
            logoImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            logoImage.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            subTitleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            subTitleLabel.topAnchor.constraint(equalTo: logoImage.bottomAnchor, constant: 50),
            subTitleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            subTitleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            loginButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50),
            loginButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            loginButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            loginButton.heightAnchor.constraint(equalToConstant: 50),
            
            registerButton.bottomAnchor.constraint(equalTo: loginButton.topAnchor, constant: -20),
            registerButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            registerButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            registerButton.heightAnchor.constraint(equalToConstant: 50),

            
        ])
    }
    
    
    @objc func loginButtonTapped() {
        
        navigationController?.pushViewController(loginView, animated: true)
        
    }
    
    @objc func registerButtonTapped() {
        
        navigationController?.pushViewController(registerView, animated: true)
        
    }
}
