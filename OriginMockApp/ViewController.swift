//
//  ViewController.swift
//  OriginMockApp
//
//  Created by Hiroaki-Hirabayashi on 2022/05/23.
//

import UIKit

class ViewController: UIViewController {

    let tabBar = UITabBarController()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabBar.setViewControllers([UINavigationController()], animated: false)
    }


}

