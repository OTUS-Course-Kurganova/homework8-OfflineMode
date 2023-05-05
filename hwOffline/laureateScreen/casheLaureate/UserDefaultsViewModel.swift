//
//  UserDefaultsViewModel.swift
//  hwOffline
//
//  Created by Alexandra Kurganova on 05.05.2023.
//

import SwiftUI

final class UserDefaultsViewModel: ObservableObject {
    private var defaults = UserDefaults.standard
    
    struct CachedData: Codable {
        let data: [LaureateDataSource]
    }
    
    private var laureateDataForFile = [String: Any]()
    
    func casheData(for laureates: [LaureateDataSource], category: ScienceCategory) {
        guard let dataLaureates = convertLaureateToJSON(laureates) else { return }
        defaults.set(dataLaureates, forKey: getKey(category: category))
    }
    
    func getCachedLaureates(category: ScienceCategory) -> [LaureateDataSource]? {
        guard let data = UserDefaults.standard.object(forKey: getKey(category: category)) as? Data else { return nil }
        do {
            let cached = try JSONDecoder().decode(CachedData.self, from: data)
            return cached.data
        } catch {
            print(error.localizedDescription)
            return nil
        }
    }
    
    fileprivate func getKey(category: ScienceCategory) -> String {
        "laureates_in_\(category)"
    }
    
    fileprivate func convertLaureateToJSON(_ laureates: [LaureateDataSource]) -> Data? {
        do {
            let encodedData = try JSONEncoder().encode(CachedData(data: laureates))
            return encodedData
        } catch {
            print(error.localizedDescription)
            return nil
        }
    }
}
