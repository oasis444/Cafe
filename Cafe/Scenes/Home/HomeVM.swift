//
//  HomeVM.swift
//  Cafe
//
//  Copyright (c) 2023 oasis444. All right reserved.
//

import SwiftUI

class HomeVM: ObservableObject {
    @Published var isNeedToReload = false {
        didSet {
            guard isNeedToReload == true else { return }
            coffeeMenu.shuffle()
            events.shuffle()
            isNeedToReload = false
        }
    }
    
    @Published var coffeeMenu: [CoffeeMenu] = [
        CoffeeMenu(image: Image("coffee"), name: "아메리카노"),
        CoffeeMenu(image: Image("coffee"), name: "드립커피"),
        CoffeeMenu(image: Image("coffee"), name: "카푸치노"),
        CoffeeMenu(image: Image("coffee"), name: "콜드브루"),
        CoffeeMenu(image: Image("coffee"), name: "아인슈페너"),
        CoffeeMenu(image: Image("coffee"), name: "에스프레소"),
        CoffeeMenu(image: Image("coffee"), name: "아이스 아메리카노")
    ]
    
    @Published var events: [Event] = [
        Event(image: Image("coffee"), title: "제주도 한정 메뉴", description: "제주도 한정 음료가 출시되었습니다. 꼭 드셔보세요!"),
        Event(image: Image("coffee"), title: "여름 한정 메뉴", description: "여름에는 시원한 아이스 커피~ 무더운 여름에 어울리는 아이스 커피를 드셔보세요.")
    ]
}
