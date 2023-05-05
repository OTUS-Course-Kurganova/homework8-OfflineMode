//
//  Screen.swift
//  hwOffline
//
//  Created by Alexandra Kurganova on 05.05.2023.
//

import SwiftUI

struct Screen: Identifiable, Equatable {
    let id: String
    let screenView: AnyView

    static func == (lhs: Self, rhs: Self) -> Bool {
        lhs.id == rhs.id
    }
}

enum NavigationAnimationType {
    case none
    case custom(AnyTransition, AnyTransition)
}
