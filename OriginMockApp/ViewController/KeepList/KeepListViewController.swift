//
//  KeepListViewController.swift
//  OriginMockApp
//
//  Created by Hiroaki-Hirabayashi on 2022/11/14.
//

import UIKit

/// キープリスト画面
final class KeepListViewController: UIViewController {
    
    // MARK: - Properties
    private let jobList = DataStore.shared.jobList
    private let keepList = DataStore.shared.keepList
    
    // MARK: - IBOutlets
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var sumLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "キープリスト"
        tableView.register(UINib(nibName: KeepListCell.cellId, bundle: nil), forCellReuseIdentifier: KeepListCell.cellId)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        sumLabel.text = "キープした求人\(DataStore.shared.keepList.count)件表示"
        tableView.reloadData()
    }
}
