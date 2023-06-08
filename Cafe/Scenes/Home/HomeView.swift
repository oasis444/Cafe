//
//  HomeView.swift
//  Cafe
//
//  Copyright (c) 2023 oasis444. All right reserved.
//

import SwiftUI

struct HomeView: View {
    @ObservedObject var viewModel = HomeVM()
    
    var body: some View {
        ScrollView(.vertical) {
            HomeHeaderView(isNeedToReload: $viewModel.isNeedToReload)
            MenuSuggestionSectionView(coffeeMenu: $viewModel.coffeeMenu)
            Spacer(minLength: 32)
            EventSectionView(events: $viewModel.events)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
