//
//  LaureatesListView.swift
//  hwOffline
//
//  Created by Alexandra Kurganova on 05.05.2023.
//

import SwiftUI

struct LaureatesListView: View {
    @EnvironmentObject var viewModel: LaureatesViewModel
    @EnvironmentObject var segmentedViewModel: SegmentedViewModel
    @EnvironmentObject var navigation: NavigationViewModel

    var body: some View {
        if viewModel.laureates.isEmpty { loader }
        List {
            ForEach(viewModel.laureates) { laureate in
                contentCell(laureate: laureate)
            }
        }.onAppear {
            viewModel.getLaureates(category: segmentedViewModel.convertToCategory())
        }
    }

    private var loader: some View {
        ProgressView()
            .progressViewStyle(CircularProgressViewStyle())
            .padding(.top, 100)
    }

    fileprivate func contentCell(laureate: LaureateDataSource) -> some View {
        Button {
            navigation.push(newView: LaureateView(laureate: laureate))
        } label: {
            Text(laureate.name)
                .foregroundColor(.black)
        }
    }
}

struct LaureatesListView_Previews: PreviewProvider {
    static var previews: some View {
        LaureatesListView()
    }
}
