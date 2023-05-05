//
//  LaureateBasicDataSource.swift
//  hwOffline
//
//  Created by Alexandra Kurganova on 05.05.2023.
//

import SwiftUI
import Network

final class LaureateBasicDataSource {
    fileprivate let unknown = "unknown"

    let name: String

    init(laureate: LaureateBasic) {
        name = laureate.name?.en ?? unknown
    }
}

extension LaureateBasicDataSource: Identifiable { }
