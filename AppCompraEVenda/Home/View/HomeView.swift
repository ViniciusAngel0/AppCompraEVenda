//
//  HomeView.swift
//  AppCompraEVenda
//
//  Created by Vinicius Angelo on 21/07/22.
//

import Foundation
import UIKit

class HomeView: UIViewController {
    
    lazy var subView: UIView = {
        let view = UIView()
        view.addSubview(informationLabel)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    lazy var scrollView: UIScrollView = {
        let scroll = UIScrollView()
        scroll.addSubview(subView)
        scroll.backgroundColor = .systemBackground
        scroll.translatesAutoresizingMaskIntoConstraints = false
        return scroll
    }()
    
    
    private lazy var informationLabel: UILabel = {
        let label = UILabel()
        label.text = "O primeiro passo pra abrir sua conta é informar uns dados ;)"
        label.textAlignment = .center
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 14)
        label.textColor = UIColor.red
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        setupView()
        
    }
    
    func setupView() {
        
        view.addSubview(scrollView)
        
        
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
            
//            informationLabel.topAnchor.constraint(equalTo: subView.topAnchor, constant: 50),
            informationLabel.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor),
            informationLabel.leadingAnchor.constraint(equalTo: subView.leadingAnchor, constant: 20),
            informationLabel.trailingAnchor.constraint(equalTo: subView.trailingAnchor, constant: -20),
            
  
        ])
        
    }
    
}
