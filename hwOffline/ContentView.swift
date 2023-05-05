//
//  ContentView.swift
//  hwOffline
//
//  Created by Alexandra Kurganova on 04.05.2023.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var laureateViewModel: LaureatesViewModel
    @EnvironmentObject var segmentViewModel: SegmentedViewModel

    var body: some View {
        NavigationCustomView(transition: .none) {
            VStack {
                TitleView
                SegmentedView()
            }
        }
    }

    fileprivate var TitleView: some View {
        Text("Лауреаты, получившие премию в области ")
            .font(.system(size: 18))
            .multilineTextAlignment(.center)
            .foregroundColor(.gray)
            .padding(.top, 14)
            .padding(.bottom, 10)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(LaureatesViewModel())
            .environmentObject(SegmentedViewModel())
            .environmentObject(NavigationViewModel(easing: .default))
    }
}
