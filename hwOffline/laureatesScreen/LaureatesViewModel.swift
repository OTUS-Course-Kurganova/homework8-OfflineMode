//
//  LaureatesViewModel.swift
//  hwOffline
//
//  Created by Alexandra Kurganova on 05.05.2023.
//

import SwiftUI
import Network

enum ScienceCategory: String {
    case chemistry = "Химии"
    case medicine = "Медицины"
}

final class LaureatesViewModel: ObservableObject {
    @Published var laureates: [LaureateDataSource] = []
    private var userDefaults: UserDefaultsViewModel = .init()

    private var currentCategory: ScienceCategory = .chemistry

    func getLaureates(category: ScienceCategory) {
        if category != currentCategory {
            laureates.removeAll()
            currentCategory = category
        }
        
        if let laureates = userDefaults.getCachedLaureates(category: category) {
            self.laureates = laureates
            return
        }
        
        fetchLaureates(category: category)
    }

    fileprivate func convertCategories(category: ScienceCategory) -> DefaultAPI.NobelPrizeCategory_laureatesGet {
        switch category {
            case .chemistry: return .che
            case .medicine: return .med
        }
    }

    fileprivate func fetchLaureates(category: ScienceCategory) {
        let modelCategory = convertCategories(category: category)
        DefaultAPI.laureatesGet(offset: 0, limit: 0, nobelPrizeCategory: modelCategory) { [weak self] data, error in
            guard let self = self, let data = data, let laureates = data.laureates else { return }
            laureates.forEach {
                self.laureates.append(.init(laureate: $0))
            }
            userDefaults.casheData(for: self.laureates, category: category)
        }
    }
}
