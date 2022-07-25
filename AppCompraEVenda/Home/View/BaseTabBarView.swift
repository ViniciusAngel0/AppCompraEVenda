//
//  BaseTabBarView.swift
//  AppCompraEVenda
//
//  Created by Vinicius Angelo on 22/07/22.
//

import Foundation
import UIKit

class BaseTabBarView: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let homeView = HomeView()
        
        let hojeVc = UIViewController()
        hojeVc.view.backgroundColor = .red
        
        viewControllers = [
        
            homeView,
            hojeVc,
        
        ]
        
    }
    
}
