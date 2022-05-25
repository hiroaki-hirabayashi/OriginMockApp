//
//  TabBarIconPattern.swift
//  OriginMockApp
//
//  Created by Hiroaki-Hirabayashi on 2022/05/25.
//

import Foundation
import UIKit

protocol TabBarIconPatternProtocol {
    func tabIconImageList() -> [UIImage]
    func tabIconSelectedImageList() -> [UIImage]
    func tabTitleForBar() -> String
}

final class TabBarIconPattern: TabBarIconPatternProtocol {
    
    func tabIconImageList() -> [UIImage] {
        return [UIImage(named: "tab_icon_search_top_default"),
                UIImage(named: "tab_icon_trend_default"),
                UIImage(named: "tab_icon_my_list_default"),
                UIImage(named: "tab_icon_other_default")
            ]
            .compactMap { $0 }
    }
    
    func tabIconSelectedImageList() -> [UIImage] {
        return [UIImage(named: "tab_icon_search_top_selected"),
                UIImage(named: "tab_icon_trend_selected"),
                UIImage(named: "tab_icon_my_list_selected"),
                UIImage(named: "tab_icon_other_selected")
            ]
            .compactMap { $0 }
    }

    func tabTitleForBar() -> String {
        "みつかる"
    }
    
    
}
