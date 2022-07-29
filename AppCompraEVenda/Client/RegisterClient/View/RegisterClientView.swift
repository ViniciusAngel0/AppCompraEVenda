//
//  RegisterClientView.swift
//  AppCompraEVenda
//
//  Created by Vinicius Angelo on 28/07/22.
//

import Foundation
import UIKit

class RegisterClient: UIViewController {
    
    
    private lazy var subView: UIView = {
        let view = UIView()
        view.addSubview(nameTextField)
        view.addSubview(cellphoneTextField)
        view.addSubview(emailTextField)
        view.addSubview(ageTextField)
        view.addSubview(sexTextField)
        view.addSubview(docLabel)
        
        view.addSubview(loginButton)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var scrollView: UIScrollView = {
        let scroll = UIScrollView()
        scroll.addSubview(subView)
        scroll.backgroundColor = .systemBackground
        scroll.translatesAutoresizingMaskIntoConstraints = false
        return scroll
    }()
    
    
    private lazy var nameTextField: UITextField = {
        let text = UITextField()
        text.placeholder = "Nome completo"
        text.keyboardType = .default
        text.clearButtonMode = .always
        text.layer.cornerRadius = 5
        text.clipsToBounds = true
        text.layer.borderColor = UIColor.systemGray4.cgColor
        text.layer.borderWidth = 1
        text.borderStyle = .roundedRect
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    
    private lazy var cellphoneTextField: UITextField = {
        let text = UITextField()
        text.placeholder = "Celular"
        text.keyboardType = .default
        text.clearButtonMode = .always
        text.layer.cornerRadius = 5
        text.clipsToBounds = true
        text.layer.borderColor = UIColor.systemGray4.cgColor
        text.layer.borderWidth = 1
        text.borderStyle = .roundedRect
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    
    private lazy var emailTextField: UITextField = {
        let text = UITextField()
        text.placeholder = "E-mail"
        text.keyboardType = .default
        text.clearButtonMode = .always
        text.layer.cornerRadius = 5
        text.clipsToBounds = true
        text.layer.borderColor = UIColor.systemGray4.cgColor
        text.layer.borderWidth = 1
        text.borderStyle = .roundedRect
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    
    private lazy var ageTextField: UITextField = {
        let text = UITextField()
        text.placeholder = "Data de Nascimento"
        text.keyboardType = .default
        text.clearButtonMode = .always
        text.layer.cornerRadius = 5
        text.clipsToBounds = true
        text.layer.borderColor = UIColor.systemGray4.cgColor
        text.layer.borderWidth = 1
        text.borderStyle = .roundedRect
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    
    private lazy var sexTextField: UITextField = {
        let text = UITextField()
        text.placeholder = "Sexo"
        text.keyboardType = .default
        text.clearButtonMode = .always
        text.layer.cornerRadius = 5
        text.clipsToBounds = true
        text.layer.borderColor = UIColor.systemGray4.cgColor
        text.layer.borderWidth = 1
        text.borderStyle = .roundedRect
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    
    private lazy var docLabel: UILabel = {
       let label = UILabel()
        label.text = "DOCUMENTOS"
        label.textAlignment = .left
        label.font = .systemFont(ofSize: 15)
        label.textColor = #colorLiteral(red: 0.137254902, green: 0.7098039216, blue: 0.7098039216, alpha: 1)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var cpfTextField: UITextField = {
       let text = UITextField()
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    
    
    
    private lazy var loginButton: UIButton = {
        let button = UIButton()
        button.setTitle("Cadastrar", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.clipsToBounds = true
        button.layer.cornerRadius = 10
        button.backgroundColor = #colorLiteral(red: 0.137254902, green: 0.7098039216, blue: 0.7098039216, alpha: 1)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    
    
    //MARK: - SETUP
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(scrollView)
        setupLayoutConstraints()
        setupAdditionalConfiguration()
    }
    
    private func setupAdditionalConfiguration () {
        view.backgroundColor = .systemBackground
        title = "Cadastrar Cliente"
        
    }
    
    //Constraits
    private func setupLayoutConstraints() {
        NSLayoutConstraint.activate([
            
            scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
            
            subView.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 0),
            subView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 0),
            subView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: 0),
            subView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor, constant: 0),
            subView.widthAnchor.constraint(equalTo: scrollView.widthAnchor, constant: 0),
            subView.heightAnchor.constraint(equalToConstant: 1000),
            
            nameTextField.topAnchor.constraint(equalTo: subView.topAnchor, constant: 10),
            nameTextField.leadingAnchor.constraint(equalTo: subView.leadingAnchor, constant: 20),
            nameTextField.trailingAnchor.constraint(equalTo: subView.trailingAnchor, constant: -20),
            
            cellphoneTextField.topAnchor.constraint(equalTo: nameTextField.bottomAnchor, constant: 10),
            cellphoneTextField.leadingAnchor.constraint(equalTo: subView.leadingAnchor, constant: 20),
            cellphoneTextField.trailingAnchor.constraint(equalTo: subView.trailingAnchor, constant: -20),
            
            emailTextField.topAnchor.constraint(equalTo: cellphoneTextField.bottomAnchor, constant: 10),
            emailTextField.leadingAnchor.constraint(equalTo: subView.leadingAnchor, constant: 20),
            emailTextField.trailingAnchor.constraint(equalTo: subView.trailingAnchor, constant: -20),
            
            ageTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 10),
            ageTextField.leadingAnchor.constraint(equalTo: subView.leadingAnchor, constant: 20),
            ageTextField.trailingAnchor.constraint(equalTo: subView.trailingAnchor, constant: -20),
            
            sexTextField.topAnchor.constraint(equalTo: ageTextField.bottomAnchor, constant: 10),
            sexTextField.leadingAnchor.constraint(equalTo: subView.leadingAnchor, constant: 20),
            sexTextField.trailingAnchor.constraint(equalTo: subView.trailingAnchor, constant: -20),
            
            docLabel.topAnchor.constraint(equalTo: sexTextField.bottomAnchor, constant: 10),
            docLabel.leadingAnchor.constraint(equalTo: subView.leadingAnchor, constant: 20),
            docLabel.trailingAnchor.constraint(equalTo: subView.trailingAnchor, constant: -20),
            
            loginButton.bottomAnchor.constraint(equalTo: subView.bottomAnchor, constant: -40),
            loginButton.leadingAnchor.constraint(equalTo: subView.leadingAnchor, constant: 20),
            loginButton.trailingAnchor.constraint(equalTo: subView.trailingAnchor, constant: -20),
            loginButton.heightAnchor.constraint(equalToConstant: 50),
            
            
            
            
            
            
        ])
    }
    
}
