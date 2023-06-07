//
//  SettingMenu.swift
//  Cafe
//
//  Copyright (c) 2023 oasis444. All right reserved.
//

import Foundation

enum SettingMenu: String, CaseIterable {
    case service = "서비스"
    case support = "고객지원"
    case terms = "약관 및 정책"
    
    var title: String { rawValue }
    
    var menu: [String] {
        switch self {
        case .service:
            return Service.allCases.map { $0.title }
        case .support:
            return Support.allCases.map { $0.title }
        case .terms:
            return Terms.allCases.map { $0.title }
        }
    }
    
    enum Service: String, CaseIterable { // CaseIterable 프로토콜을 채택한 열거형은 해당 열거형의 모든 케이스를 순회할 수 있습니다.
        case frequency = "프리퀀시"
        case reward = "리워드"
        case coupon = "쿠폰"
        case giftCard = "e-기프트카드"
        case new = "What's New"
        case notification = "알림"
        case history = "히스토리"
        case receipt = "전자영수증"
        case myReview = "마이 스타벅스 리뷰"
        
        var title: String { rawValue }
    }
    
    enum Support: String, CaseIterable {
        case storeCare = "스토어 케어"
        case voiceOfCustomer = "고개의 소리"
        case store = "매장 정보"
        
        var title: String { rawValue }
    }
    
    enum Terms: String, CaseIterable {
        case terms = "이용약관"
        case privacyTerms = "개인정보 처리 방침"
        
        var title: String { rawValue }
    }
}
