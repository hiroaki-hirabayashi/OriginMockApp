//
//  KeepListCell.swift
//  OriginMockApp
//
//  Created by Hiroaki-Hirabayashi on 2023/03/26.
//

import UIKit

/// キープリストCell
final class KeepListCell: UITableViewCell {
    
    // MARK: - Properties
    static let cellId = "KeepListCell"
    
    // MARK: - IBOutlets
    @IBOutlet private weak var keepedDateLabel: UILabel!
    @IBOutlet private weak var companyNameLabel: UILabel!
    
    // MARK: - LifeCycle
    override func awakeFromNib() {
        super.awakeFromNib()
     
    }
    
    // MARK: - Internal Functions
    func setCompanyNameLabel(companyName: String) {
        companyNameLabel.text = companyName
    }
    
    func setKeepedDate(date: String) {
        keepedDateLabel.text = date
    }
}
