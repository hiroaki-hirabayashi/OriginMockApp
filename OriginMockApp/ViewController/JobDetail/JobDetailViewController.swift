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
    
    // MARK: - Properties
    private let presenter = JobDetailPresenter()
    private let rqmtId: String
    private let companyName: String
    private var isKeep: Bool {
        presenter.checkKeepState(rqmtId: rqmtId)
    }
    
    // MARK: - IBOutlets
    @IBOutlet private weak var companyNameLabel: UILabel!
    @IBOutlet private weak var keepButton: UIButton!
    
    // MARK: - IBActions
    @IBAction func tappedKeepButtonAction(_ sender: Any) {
        keepButtonAction()
    }
    
    // MARK: - LifeCycle
    init?(coder: NSCoder, rqmtId: String, companyName: String) {
        self.rqmtId = rqmtId
        self.companyName = companyName
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "求人詳細"
        companyNameLabel.text = companyName
        if isKeep {
            keepState()
        }
    }
    
    // MARK: - Private Functions
    private func keepButtonAction() {
        if isKeep {
            presenter.removeKeepList(rqmtId: rqmtId)
            noKeepState()
        } else {
            presenter.setKeepList(rqmtId: rqmtId, date: Date())
            keepState()
        }
    }
    
    private func keepState() {
        keepButton.setTitle("キープ済み", for: .normal)
        keepButton.backgroundColor = .systemYellow
    }
    
    private func noKeepState() {
        keepButton.setTitle("キープする", for: .normal)
        keepButton.backgroundColor = .white
    }
}
