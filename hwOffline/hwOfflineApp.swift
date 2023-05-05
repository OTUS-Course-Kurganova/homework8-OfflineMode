//
//  hwOfflineApp.swift
//  hwOffline
//
//  Created by Alexandra Kurganova on 04.05.2023.
//

import SwiftUI

@main
struct hwOfflineApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(LaureatesViewModel())
                .environmentObject(SegmentedViewModel())
                .environmentObject(NavigationViewModel(easing: .default))
        }
    }
}
