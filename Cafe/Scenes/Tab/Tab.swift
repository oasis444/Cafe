//
//  Tab.swift
//  Cafe
//
//  Copyright (c) 2023 oasis444. All right reserved.
//

import SwiftUI

enum Tab {
    case home
    case other
    
    var textItem: Text {
        switch self {
        case .home:
            return Text("Home")
        case .other:
            return Text("Other")
        }
    }
    
    var imageItem: Image {
        switch self {
        case .home:
            return Image(systemName: "house.fill")
        case .other:
            return Image(systemName: "ellipsis")
        }
    }
}
