//
//  MainTabView.swift
//  Cafe
//
//  Copyright (c) 2023 oasis444. All right reserved.
//

import SwiftUI

struct MainTabView: View {
    let numbers: [Int] = Array(1...100)
    let items: [GridItem] = Array(repeating: .init(.flexible()), count: 1)
    
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Tab.home.imageItem
                    Tab.home.textItem
                }
            OtherView()
                .tabItem {
                    Tab.other.imageItem
                    Tab.other.textItem
                }
        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
