//
//  CoffeeMenu.swift
//  Cafe
//
//  Copyright (c) 2023 oasis444. All right reserved.
//

import SwiftUI

struct CoffeeMenu: Identifiable {
    let id = UUID()
    let image: Image
    let name: String
    
    static let sample: [CoffeeMenu] = [
        CoffeeMenu(image: Image("coffee"), name: "아메리카노"),
        CoffeeMenu(image: Image("coffee"), name: "드립커피"),
        CoffeeMenu(image: Image("coffee"), name: "카푸치노"),
        CoffeeMenu(image: Image("coffee"), name: "콜드브루"),
        CoffeeMenu(image: Image("coffee"), name: "아인슈페너"),
        CoffeeMenu(image: Image("coffee"), name: "에스프레소"),
        CoffeeMenu(image: Image("coffee"), name: "아이스 아메리카노")
    ]
}
