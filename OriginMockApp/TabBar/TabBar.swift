//
//  TabBarController.swift
//  OriginMockApp
//
//  Created by Hiroaki-Hirabayashi on 2022/06/01.
//

import Foundation
import UIKit

/** タブバータイプ(4タブ) */
enum TabBarIndex: Int {
    case searchTop = 0    // トップ
    case trend      // 見つかる
    case myList     // マイリスト
    case other      // その他
    case count      // タブの数
}

class TabBar: UITabBarController {
    /// 選択中タブIndex
    private var currentTabIndex = 0
    private var isFromSearchList = false

    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tabbarIconPattern = TabBarIconPattern()
        AppearanceService.setTabBarStyle(withTabBar: self.tabBar,
                                            defaultImages: tabbarIconPattern.tabIconImageList(),
                                            selectedImages: tabbarIconPattern.tabIconSelectedImageList(),
                                            font: tabbarIconPattern.tabBarItemFont)
        currentTabIndex = TabBarIndex.searchTop.rawValue

//        // 起動されたらAppDelegateに情報を渡す
//        let appDelegate = UIApplication.shared.delegate as? AppDelegate
//        appDelegate?.topTabBarController = self
    }
    

}
