//
//  JobListPresenter.swift
//  OriginMockApp
//
//  Created by Hiroaki-Hirabayashi on 2023/01/01.
//

import Foundation

/// 求人一覧画面のPresenter
final class JobListViewPresenter {
    
    // MARK: - Properties
    var rqmtId = ""
    // あらかじめ10件に絞り込む
    let tenRangeItemsJobList = DataStore.shared.jobList.prefix(10)
    
    // MARK: - Private Functions
    /// 求人情報をキープリストに保存
    private func setKeepList(rqmtId: String, date: Date) {
        DataStore.shared.keepList.append(キープ(rqmtId: rqmtId, registDate: date))
    }
    
    /// 求人情報をキープリストから削除
    private func removeKeepList(rqmtId: String) {
        DataStore.shared.keepList.removeAll(where : { $0.rqmtId == rqmtId})
    }
    
    // MARK: - Internal Functions

    /// N番目の求人情報をキープしているかBool判定
    func checkToKeepingAndIndex(index: Int) -> Bool {
        DataStore.shared.keepList.contains(where: { $0.rqmtId == tenRangeItemsJobList[index].rqmtId })
    }
    
    /// タップされたキープボタンのIndexを元にPresenter側でキープにするか未キープにするか判断する
    func tappedKeepButton(index: Int) {
        let jobDetail = tenRangeItemsJobList[index]
        if checkToKeepingAndIndex(index: index) {
            removeKeepList(rqmtId: jobDetail.rqmtId)
        } else {
            setKeepList(rqmtId: jobDetail.rqmtId, date: Date())
        }
        
    }
}

