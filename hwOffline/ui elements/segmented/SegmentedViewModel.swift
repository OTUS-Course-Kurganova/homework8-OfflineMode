//
//  SegmentedViewModel.swift
//  hwOffline
//
//  Created by Alexandra Kurganova on 05.05.2023.
//

import SwiftUI

final class SegmentedViewModel: ObservableObject {
    @Published var selectedSegment: Int = 0
    
    func convertToCategory() -> ScienceCategory {
        if selectedSegment == 0 {
            return .chemistry
        }
        if selectedSegment == 1 {
            return .medicine
        }
        return .medicine
    }
}
