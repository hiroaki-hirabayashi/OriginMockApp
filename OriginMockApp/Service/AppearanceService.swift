//
//  AppearanceService.swift
//  OriginMockApp
//
//  Created by Hiroaki-Hirabayashi on 2022/05/26.
//

import Foundation
import UIKit

/// 外観系の共通サービス
final class AppearanceService {
    
    /*!
     *  @description TabBarに画像、色などを設定します
     *
     *  @param tabBar         画像、色を設定するTabBar
     *  @param defaultColor   通常時の色
     *  @param selectedColor  選択時の色
     *  @param defaultFont    通常時のフォント
     *  @param selectedFont   選択時のフォント
     *  @param defaultImages  通常時に表示する画像
     *  @param selectedImages 選択時に表示する画像
     */
    class func tabBarStyle(withTabBar tabBar: UITabBar,
                              backgroundColor: UIColor,
                              defaultColor: UIColor,
                              selectedColor: UIColor,
                              defaultFont: UIFont,
                              selectedFont: UIFont,
                              defaultImages: [UIImage],
                              selectedImages: [UIImage]) {
        guard let items = tabBar.items else { return }
        for index in 0..<items.count {
            let item = items[index]
            item.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: defaultColor,
                                         NSAttributedString.Key.font: defaultFont], for: .normal)
            
            item.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: selectedColor,
                                         NSAttributedString.Key.font: selectedFont], for: .selected)
            
            let defaultImage = index < defaultImages.count ? defaultImages[index] : nil
            let selectedImage = index < selectedImages.count ? selectedImages[index] : nil
            item.image = defaultImage
            item.selectedImage = selectedImage
        }
        tabBar.barTintColor = backgroundColor
        tabBar.tintColor = selectedColor
    }

    
    /*!
     *  @param defaultImages  通常時に表示する画像
     *  @param selectedImages 選択時に表示する画像
     */
    /// TabBarの見た目変更
    class func setTabBarStyle(withTabBar tabBar: UITabBar,
                                 defaultImages: [UIImage],
                                 selectedImages: [UIImage],
                                 font: UIFont) {
        tabBarStyle(withTabBar: tabBar,
                       backgroundColor: .lightGray,
                       defaultColor: .gray,
                       selectedColor: .black,
                       defaultFont: font,
                       selectedFont: font,
                       defaultImages: defaultImages,
                       selectedImages: selectedImages)
        // ラインを削除する
        tabBar.backgroundImage = UIImage()
        tabBar.shadowImage = UIImage()
    }
    
}
