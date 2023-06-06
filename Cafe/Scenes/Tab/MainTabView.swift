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
        List {
            Section {
                ForEach(numbers, id: \.self) {
                    Text("\($0)")
                }
            } header: {
                Text("Header")
            }
            
            Section {
                ForEach(numbers, id: \.self) {
                    Text("\($0)")
                }
            } header: {
                Text("Header")
            } footer: {
                Text("Footer")
            }
        }
        
        
//        TabView {
//            Text("Home")
//                .tabItem {
//                    Tab.home.imageItem
//                    Tab.home.textItem
//                }
//            Text("Other")
//                .tabItem {
//                    Tab.other.imageItem
//                    Tab.other.textItem
//                }
//        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
