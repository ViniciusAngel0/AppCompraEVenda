//
//  MenuView.swift
//  AppCompraEVenda
//
//  Created by Vinicius Angelo on 27/07/22.
//

import Foundation
import UIKit

class MenuView: UIViewController {
    
    let clientView = ClientView()
    
    let searchController = UISearchController(searchResultsController: nil)
    
    private lazy var subView: UIView = {
        let view = UIView()
        view.addSubview(clientButton)
        view.addSubview(productButton)
        //view.addSubview(clienteImage)
        //        view.addSubview()
        //        view.addSubview()
        //        view.addSubview()
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
    
    private lazy var clientButton: UIButton = {
        let button = UIButton()
        //button.backgroundColor = .blue
        button.setTitle("CLIENTE", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        //button.setImage(UIImage(named: "Group 2"), for: .normal)
        button.contentMode = .scaleToFill
        button.clipsToBounds = true
        button.layer.cornerRadius = 15
        button.layer.borderWidth = 1.5
        button.layer.borderColor = UIColor.blue.cgColor
        button.addTarget(self, action: #selector(clienteButtonTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
        
    }()
    
    private lazy var productButton: UIButton = {
        let button = UIButton()
        button.clipsToBounds = true
        button.layer.cornerRadius = 15
        button.layer.borderWidth = 1.5
        button.layer.borderColor = UIColor.green.cgColor
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Menu"
        view.addSubview(scrollView)
        view.backgroundColor = .systemBackground
        setupView()
        configSeachBar()
        
        
        
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
            
            clientButton.topAnchor.constraint(equalTo: subView.topAnchor, constant: 20),
            clientButton.leadingAnchor.constraint(equalTo: subView.leadingAnchor, constant: 20),
            clientButton.trailingAnchor.constraint(equalTo: subView.centerXAnchor, constant: -10),
            clientButton.heightAnchor.constraint(equalToConstant: 100),
            clientButton.widthAnchor.constraint(equalToConstant: 100),
            
            //            clienteImage.topAnchor.constraint(equalTo: clientButton.topAnchor),
            //            clienteImage.leadingAnchor.constraint(equalTo: clientButton.leadingAnchor),
            //            clienteImage.bottomAnchor.constraint(equalTo: clientButton.bottomAnchor),
            //            clienteImage.trailingAnchor.constraint(equalTo: clientButton.trailingAnchor),
            
            productButton.topAnchor.constraint(equalTo: subView.topAnchor, constant: 20),
            productButton.trailingAnchor.constraint(equalTo: subView.trailingAnchor, constant: -20),
            productButton.leadingAnchor.constraint(equalTo: subView.centerXAnchor, constant: 10),
            productButton.heightAnchor.constraint(equalToConstant: 100),
            productButton.widthAnchor.constraint(equalToConstant: 100),
            
            
            
        ])
    }
    
    func configSeachBar() {
        navigationItem.searchController = self.searchController
    }
    
    @objc func clienteButtonTapped() {
        
        navigationController?.pushViewController(clientView, animated: true)
        
    }
    
}




