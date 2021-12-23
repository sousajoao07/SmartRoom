//
//  IconHelper.swift
//  Login
//
//  Created by João Sousa on 22/12/21.
//  Copyright © 2021 João Sousa. All rights reserved.
//

import UIKit

class IconHelper{
    @objc func didTapButton(){
        let tabBarVC = UITabBarController()
        
        let lvc = UINavigationController(rootViewController: LampsViewController())
        let avc = UINavigationController(rootViewController: ActionsViewController())
        
        lvc.title = "Home"
        lvc.title = "Actions"
        
        tabBarVC.setViewControllers([lvc, avc], animated: false)
        tabBarVC.modalPresentationStyle = .fullScreen
        //present(tabBarVC, animated: true)
    }
}
