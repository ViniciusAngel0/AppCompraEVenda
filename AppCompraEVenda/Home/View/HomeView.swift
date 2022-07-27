//
//  HomeView.swift
//  AppCompraEVenda
//
//  Created by Vinicius Angelo on 21/07/22.
//

import Foundation
import UIKit

class HomeView: UIViewController {
    
    let noticationView = NotificationView()
    
    private lazy var subView: UIView = {
        let view = UIView()
        view.addSubview(imageUserImage)
        view.addSubview(nameLabel)
        view.addSubview(cnpjLabel)
        view.addSubview(notificationButton)
        view.addSubview(inBalanceButton)
        view.addSubview(outBalanceButton)
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
    
    private lazy var imageUserImage: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleToFill
        image.backgroundColor = .blue
        image.layer.cornerRadius = 15
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.text = "CC Imports"
        label.textAlignment = .left
        label.numberOfLines = 0
        label.font = .boldSystemFont(ofSize: 17)
        label.textColor = UIColor.black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var cnpjLabel: UILabel = {
       let label = UILabel()
        label.text = "123.456.0001-89"
        label.textAlignment = .left
        label.font = .systemFont(ofSize: 14)
        label.textColor = .systemGray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var notificationButton: UIButton = {
       let button = UIButton()
        button.setImage(UIImage(systemName: "bell"), for: .normal)
        button.contentMode = .center
        button.addTarget(self, action: #selector(noticationViewTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var inBalanceButton: UIButton = {
       let button = UIButton()
        button.backgroundColor = .red
        button.layer.cornerRadius = 15
        button.contentMode = .scaleAspectFill
        //button.setImage(UIImage(named: "cliente"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var outBalanceButton: UIButton = {
       let button = UIButton()
        button.layer.cornerRadius = 15
        button.backgroundColor = .blue
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Home"
        view.addSubview(scrollView)
        view.backgroundColor = .systemBackground
        setupView()
        
    }
    
    private func setupView() {
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
            
            imageUserImage.topAnchor.constraint(equalTo: subView.topAnchor, constant: 0),
            imageUserImage.leadingAnchor.constraint(equalTo: subView.leadingAnchor, constant: 20),
            imageUserImage.heightAnchor.constraint(equalToConstant: 56.99),
            imageUserImage.widthAnchor.constraint(equalToConstant: 56.99),
            
            nameLabel.leadingAnchor.constraint(equalTo: imageUserImage.trailingAnchor, constant: 10),
            nameLabel.topAnchor.constraint(equalTo: imageUserImage.topAnchor, constant: 5),
            
            cnpjLabel.leadingAnchor.constraint(equalTo: imageUserImage.trailingAnchor, constant: 10),
            cnpjLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 7),
            
            notificationButton.trailingAnchor.constraint(equalTo: subView.trailingAnchor, constant: -20),
            //notificationImage.centerXAnchor.constraint(equalTo: imageUserImage.centerXAnchor),
            notificationButton.heightAnchor.constraint(equalToConstant: 56.99),
            notificationButton.widthAnchor.constraint(equalToConstant: 56.99),
            
            inBalanceButton.topAnchor.constraint(equalTo: imageUserImage.bottomAnchor, constant: 20),
            inBalanceButton.leadingAnchor.constraint(equalTo: subView.leadingAnchor, constant: 20),
            inBalanceButton.heightAnchor.constraint(equalToConstant: 100),
            //clientButton.widthAnchor.constraint(equalToConstant: 150),
            inBalanceButton.trailingAnchor.constraint(equalTo: subView.centerXAnchor, constant: -10),
            
            outBalanceButton.topAnchor.constraint(equalTo: imageUserImage.bottomAnchor, constant: 20),
            outBalanceButton.trailingAnchor.constraint(equalTo: subView.trailingAnchor, constant: -20),
            outBalanceButton.heightAnchor.constraint(equalToConstant: 100),
            outBalanceButton.leadingAnchor.constraint(equalTo: subView.centerXAnchor, constant: 10),
            
        ])
    }
    
    @objc func noticationViewTapped() {
        
        navigationController?.pushViewController(noticationView, animated: true)
        
    }
    
}
