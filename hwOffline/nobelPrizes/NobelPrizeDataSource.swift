//
//  NobelPrizeDataSource.swift
//  hwOffline
//
//  Created by Alexandra Kurganova on 05.05.2023.
//

import SwiftUI
import Network

final class NobelPrizeDataSource: Codable {
    fileprivate let unknown = "unknown"

    let category: String
    let awardYear: String
    let amount: Int
    let status: NobelPrizePerLaureate.PrizeStatus
    let motivation: String

    init(prize: NobelPrizePerLaureate) {
        category = prize.categoryFullName?.en ?? unknown
        awardYear = prize.awardYear ?? unknown
        amount = prize.prizeAmount ?? 0
        motivation = prize.motivation?.en ?? unknown
        status = prize.prizeStatus ?? .restricted
    }
}

extension NobelPrizeDataSource: Identifiable { }
