//
//  JobListViewCellTableViewCell.swift
//  OriginMockApp
//
//  Created by Hiroaki-Hirabayashi on 2022/11/29.
//

import UIKit

protocol JobListCellDelegate: AnyObject {
    func tappedKeepButton(cell: JobListCell)
}

/// 求人一覧画面のCell
final class JobListCell: UITableViewCell {

    // MARK: - Properties
    let jobList = DataStore.shared.jobList.prefix(10)
    static let cellId = "JobListCell"
    private var isKeep = false
    weak var delegate: JobListCellDelegate?
    
    // MARK: - IBOutlets
    @IBOutlet private weak var companyNameLabel: UILabel!
    @IBOutlet private weak var keepButton: UIButton!
    
    // MARK: - IBActions
    @IBAction private func tappedKeepButton(_ sender: Any) {
        delegate?.tappedKeepButton(cell: self)
    }
    // MARK: - LifeCycle
    override func awakeFromNib() {
        super.awakeFromNib()
        backgroundColor = UIColor.gray
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    // MARK: - Private Functions
    private func changeButtonToKeepState() {
        keepButton.setTitle("キープ済み", for: .normal)
        keepButton.backgroundColor = .systemYellow
    }
    
    private func changeButtonToUnKeepState() {
        keepButton.setTitle("キープする", for: .normal)
        keepButton.backgroundColor = .white
    }
    
    // MARK: - Internal Functions
    /// Cellに社名をセット、Topに行ったり来たりしてもボタンの状態変化が走る
    func setUp(jobDetail: 求人, isKeep: Bool) {
        companyNameLabel.text = jobDetail.companyName
        changeKeepButtonState(isKeep: isKeep)
    }
    
    func changeKeepButtonState(isKeep: Bool) {
        isKeep ? changeButtonToKeepState() : changeButtonToUnKeepState()
    }
    
}
