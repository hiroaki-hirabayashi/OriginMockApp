//
//  JobListViewController.swift
//  OriginMockApp
//
//  Created by Hiroaki-Hirabayashi on 2022/11/26.
//

import Foundation
import UIKit

// 求人一覧画面
final class JobListViewController: UIViewController {
    
    // MARK: - Properties
    private let jobList = DataStore.shared.jobList
    private let presenter = JobListViewPresenter()
    
    // MARK: - IBOutlets
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "求人一覧"
        tableView.register(UINib(nibName: JobListCell.cellId, bundle: nil), forCellReuseIdentifier: JobListCell.cellId)
        tableView.backgroundColor = UIColor.gray
        tableView.separatorStyle = .none
    }
}

extension JobListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        jobList.prefix(10).count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: JobListCell.cellId, for: indexPath) as? JobListCell else {
            fatalError("JobListCell読み込み失敗")
        }
        let jobDetail = jobList[indexPath.row]
        cell.delegate = self
        cell.setUp(jobDetail: jobDetail, isKeep: presenter.checkToKeepingAndIndex(index: indexPath.row))
        cell.selectionStyle = UITableViewCell.SelectionStyle.none

        return cell 
    }
    
}

extension JobListViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let jobDetailVC = UIStoryboard(name: "JobDetail", bundle: nil).instantiateInitialViewController() as? JobDetailViewController else {
            fatalError("JobDetail.storyboard読み込み失敗")
        }
        self.navigationController?.pushViewController(jobDetailVC, animated: true)
    }
}

extension JobListViewController: JobListCellDelegate {
    func tappedKeepButton(cell: JobListCell) {
        // cellからindexPathを取得する
        guard let indexPath = tableView.indexPath(for: cell) else { return }
        // キープの状態切り替えはPresenterに任せる
        presenter.tappedKeepButton(index: indexPath.row)
        // cellの見た目更新
        cell.changeKeepButtonState(isKeep: presenter.checkToKeepingAndIndex(index: indexPath.row))
    }
}
