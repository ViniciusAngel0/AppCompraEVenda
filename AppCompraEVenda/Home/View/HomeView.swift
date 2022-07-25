//
//  HomeView.swift
//  AppCompraEVenda
//
//  Created by Vinicius Angelo on 21/07/22.
//

import Foundation
import UIKit

class HomeView: UIViewController {
    
    private lazy var subView: UIView = {
        let view = UIView()
        view.addSubview(imageUserImage)
        view.addSubview(nameLabel)
        view.addSubview(cnpjLabel)
        view.addSubview(notificationImage)
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
        label.text = "123.123.0001-82"
        label.textAlignment = .left
        label.font = .systemFont(ofSize: 14)
        label.textColor = .systemGray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var notificationImage: UIImageView = {
       let image = UIImageView()
        image.image = .init(systemName: "bell")
        image.contentMode = .center
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
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
            
            notificationImage.trailingAnchor.constraint(equalTo: subView.trailingAnchor, constant: -20),
            //notificationImage.centerXAnchor.constraint(equalTo: imageUserImage.centerXAnchor),
            notificationImage.heightAnchor.constraint(equalToConstant: 56.99),
            notificationImage.widthAnchor.constraint(equalToConstant: 56.99),
            
        ])
    }
}
