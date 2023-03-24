//
//  JobDetailPresenter.swift
//  OriginMockApp
//
//  Created by Hiroaki-Hirabayashi on 2023/01/22.
//

import Foundation

/// 求人詳細画面のPresenter
final class JobDetailPresenter {
    
    // MARK: - Internal Functions
    
    /// 求人情報をキープリストに保存
    func setKeepList(rqmtId: String, date: Date) {
        DataStore.shared.keepList.append(キープ(rqmtId: rqmtId, registDate: Date()))
    }
    
    /// 求人情報をキープリストから削除
    func removeKeepList(rqmtId: String) {
        DataStore.shared.keepList.removeAll(where : { $0.rqmtId == rqmtId})
    }
    
    /// 求人情報をキープしているかBool判定
    func checkKeepState(rqmtId: String) -> Bool {
        DataStore.shared.keepList.contains(where: { $0.rqmtId == rqmtId})
    }
}
