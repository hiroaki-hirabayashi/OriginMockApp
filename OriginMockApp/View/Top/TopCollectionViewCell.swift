//
//  TopCollectionViewCell.swift
//  OriginMockApp
//
//  Created by Hiroaki-Hirabayashi on 2022/11/20.
//

import UIKit

protocol TopCollectionViewCellDelegate: AnyObject {
    func onTapSeachResultButton()
}

/// Top画面のButton
final class TopCollectionViewCell: UICollectionViewCell {
    
    // MARK: - Properties
    static let cellId = "TopCollectionViewCell"
    weak var delegate: TopCollectionViewCellDelegate?
    
    // MARK: - IBOutlets
    @IBOutlet private weak var seachResultButton: UIButton!
    @IBOutlet private weak var areaButton: UIButton!
    @IBOutlet private weak var stationButton: UIButton!
    @IBOutlet private weak var jobButton: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    // MARK: - IBActions
    @IBAction func onTapSeachResuitButton(_ sender: Any) {
        delegate?.onTapSeachResultButton()
    }
    
}
