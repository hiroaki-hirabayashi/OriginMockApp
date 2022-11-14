//
//  TabBarController.swift
//  OriginMockApp
//
//  Created by Hiroaki-Hirabayashi on 2022/11/14.
//

import UIKit

/// TabBarController
final class TabBarController: UITabBarController {
    
    // MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setTabBarController()
    }
    
    // MARK: - Private Functions
    /// TabBarの設定
    func setTabBarController() {
        guard let topVC = UIStoryboard(name: "Top", bundle: nil).instantiateViewController(withIdentifier: "Top") as? TopViewController else {
            fatalError("Top.storyboard読み込み失敗")
        }
        let topTab = UINavigationController(rootViewController: topVC)

        guard let keepVC = UIStoryboard(name: "KeepList", bundle: nil).instantiateViewController(withIdentifier: "KeepList") as? KeepListViewController else {
            fatalError("Keep.storyboard読み込み失敗")
        }
        let KeepTab = UINavigationController(rootViewController: keepVC)

        self.setViewControllers([topTab, KeepTab], animated: false)
        self.tabBar.backgroundColor = .white
        // タブバーを半透明にしない
        self.tabBar.isTranslucent = false
        
        setTabBarItem(index: 0, title: "さがす", symbolName: "star")
        setTabBarItem(index: 1, title: "キープ", symbolName: "face.smiling")
    }
    
    private func setTabBarItem(index: Int, title: String, symbolName: String) {
        guard let tabItems = tabBar.items else { return }
        tabItems[index].title = title
        tabItems[index].image = UIImage(systemName: symbolName)
    }
}

