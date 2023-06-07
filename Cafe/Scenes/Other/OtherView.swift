//
//  OtherView.swift
//  Cafe
//
//  Copyright (c) 2023 oasis444. All right reserved.
//

import SwiftUI

struct OtherView: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(SettingMenu.allCases, id: \.self) { section in
                    Section(section.title) {
                        ForEach(section.menu, id: \.self) { title in
                            NavigationLink(destination: {
                                Text(title)
                            }) {
                                Text(title)
                            }
                        }
                    }
                }
            }
            .navigationTitle("Other")
            .listStyle(.plain)
            .toolbar {
                NavigationLink(destination: {
                    SettingView()
                }) {
                    Image(systemName: "gear")
                }
            }
        }
    }
}

struct OtherView_Previews: PreviewProvider {
    static var previews: some View {
        OtherView()
    }
}
