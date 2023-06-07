//
//  MenuSuggestionSectionView.swift
//  Cafe
//
//  Copyright (c) 2023 oasis444. All right reserved.
//

import SwiftUI

struct MenuSuggestionSectionView: View {
    var body: some View {
        VStack {
            Text("\(User.shared.userName)님을 위한 추천메뉴")
                .font(.headline)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal, 16)
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack(spacing: 20) {
                    ForEach(CoffeeMenu.sample) { menu in
                        MenuSuggestionItemView(coffeeMenu: menu)
                    }
                }
                .padding(.horizontal, 16) // .padding([.leading, .trailing], 16)과 같은 표현
            }
        }
    }
}

struct MenuSuggestionItemView: View {
    let coffeeMenu: CoffeeMenu
    
    var body: some View {
        VStack {
            coffeeMenu.image
                .resizable()
                .frame(width: 100, height: 100)
                .clipShape(Circle())
            Text(coffeeMenu.name)
                .font(.caption)
        }
    }
}

struct MenuSuggestionSectionView_Previews: PreviewProvider {
    static var previews: some View {
        MenuSuggestionSectionView()
    }
}
