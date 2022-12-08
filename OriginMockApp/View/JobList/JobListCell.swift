//
//  JobListViewCellTableViewCell.swift
//  OriginMockApp
//
//  Created by Hiroaki-Hirabayashi on 2022/11/29.
//

import UIKit

/// 求人一覧画面のCell
final class JobListCell: UITableViewCell {

    // MARK: - Properties
    let jobList = DataStore.shared.jobList.prefix(10)
    static let cellId = "JobListCell"
    
    // MARK: - IBOutlets
    @IBOutlet private weak var companyNameLabel: UILabel!
    
    @IBOutlet private weak var keepButton: UIButton!
    
    // MARK: - LifeCycle
    override func awakeFromNib() {
        super.awakeFromNib()
        backgroundColor = UIColor.gray
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    // MARK: - Internal Functions
    func setUp(jobDetail: 求人) {
        companyNameLabel.text = jobDetail.companyName
    }
    
}