//
//  User.swift
//  Cafe
//
//  Copyright (c) 2023 oasis444. All right reserved.
//

import Foundation

struct User {
    let userName: String
    let account: String
    
    static let shared = User(userName: "Han's", account: "https://github.com/oasis444")
}
