//
//  DataStore.swift
//  OriginMockApp
//
//  Created by Hiroaki-Hirabayashi on 2022/11/14.
//

import Foundation

class DataStore {
    static var shared = DataStore()
    
    var keepList = [キープ]()
    let jobList: [求人] = [
        .init(rqmtId: "1", companyName: "社名1"),
        .init(rqmtId: "2", companyName: "社名2社名2社名2社名2社名2社名2社名2社名2社名2社名2社名2社名2社名2社名2"),
        .init(rqmtId: "3", companyName: "社名3"),
        .init(rqmtId: "4", companyName: "社名4社名4社名4"),
        .init(rqmtId: "5", companyName: "社名5社名5社名5社名5"),
        .init(rqmtId: "6", companyName: "社名6社名6社名6社名6社名6社名6社名6社名6社名6社名6社名6社名6社名6社名6社名6社名6社名6社名6社名6"),
        .init(rqmtId: "7", companyName: "社名7社名7社名7社名7社名7社名7"),
        .init(rqmtId: "8", companyName: "社名8"),
        .init(rqmtId: "9", companyName: "社名9"),
        .init(rqmtId: "10", companyName: "社名10"),
        .init(rqmtId: "11", companyName: "社名11社名11社名11社名11社名11社名11社名11社名11社名11社名11"),
        .init(rqmtId: "12", companyName: "社名12")
    ]
}

struct 求人 {
    /// 求人ID
    let rqmtId: String
    /// 社名
    let companyName: String
}

struct キープ {
    /// 求人ID
    let rqmtId: String
    /// キープした日付
    let registDate: Date
}

