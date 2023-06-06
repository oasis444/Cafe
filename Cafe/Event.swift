//
//  Event.swift
//  Cafe
//
//  Copyright (c) 2023 oasis444. All right reserved.
//

import SwiftUI

struct Event: Identifiable {
    let id = UUID()
    let image: Image
    let title: String
    let description: String
    
    static let sample: [Event] = [
        Event(image: Image("coffee"), title: "제주도 한정 메뉴", description: "제주도 한정 음료가 출시되었습니다. 꼭 드셔보세요!"),
        Event(image: Image("coffee"), title: "여름 한정 메뉴", description: "여름에는 시원한 아이스 커피~ 무더운 여름에 어울리는 아이스 커피를 드셔보세요.")
    ]
}
