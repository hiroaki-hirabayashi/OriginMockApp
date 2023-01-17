//
//  JobDetailViewController.swift
//  OriginMockApp
//
//  Created by Hiroaki-Hirabayashi on 2022/12/08.
//

import Foundation
import UIKit

/// 求人詳細画面
final class JobDetailViewController: UIViewController {
    
    
    
    // MARK: - IBOutlets
    @IBOutlet private weak var companyNameLabel: UILabel!
    @IBOutlet private weak var keepButton: UIButton!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "求人詳細"
    }
}
