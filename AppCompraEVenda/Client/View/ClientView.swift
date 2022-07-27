//
//  ClientView.swift
//  AppCompraEVenda
//
//  Created by Vinicius Angelo on 27/07/22.
//

import Foundation
import UIKit

class ClientView: UIViewController {
    
    private lazy var registerClientButton: UIButton = {
       let button = UIButton()
        button.layer.cornerRadius = 15
        button.layer.borderWidth = 1.5
        button.setTitle("Cadastrar", for: .normal)
        button.setTitleColor(.red, for: .normal)
        button.layer.borderColor = UIColor.red.cgColor
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var searchClientButton: UIButton = {
       let button = UIButton()
        button.layer.cornerRadius = 15
        button.layer.borderWidth = 1.5
        button.setTitle("Pesquisar", for: .normal)
        button.setTitleColor(.red, for: .normal)
        button.layer.borderColor = UIColor.red.cgColor
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Cliente"
        title = "Clientes"
        view.backgroundColor = .systemBackground
        SetupView()
        SetupConstraints()
    }
    
    private func SetupView() {
        
        view.addSubview(registerClientButton)
        view.addSubview(searchClientButton)
        
    }
    
    private func SetupConstraints() {
        
        NSLayoutConstraint.activate([
        
            registerClientButton.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: 5),
            registerClientButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            registerClientButton.trailingAnchor.constraint(equalTo: view.centerXAnchor, constant: -10),
            registerClientButton.heightAnchor.constraint(equalToConstant: 100),
            registerClientButton.widthAnchor.constraint(equalToConstant: 100),
            
            searchClientButton.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: 5),
            searchClientButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            searchClientButton.leadingAnchor.constraint(equalTo: view.centerXAnchor, constant: 10),
            searchClientButton.heightAnchor.constraint(equalToConstant: 100),
            searchClientButton.widthAnchor.constraint(equalToConstant: 100),

            
        ])
        
    }
    
    
}
