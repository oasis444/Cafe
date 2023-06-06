//
//  HeaderView.swift
//  Cafe
//
//  Copyright (c) 2023 oasis444. All right reserved.
//

import SwiftUI

enum HeaderButton {
    case refresh
    case new
    case coupon
    case bell
    
    var buttonImage: Button<Image> {
        switch self {
        case .refresh:
            return Button {
                print("www")
            } label: {
                Image(systemName: "arrow.triangle.2.circlepath")
            }
        case .new:
            return Button {
                print("www")
            } label: {
                Image(systemName: "arrow.triangle.2.circlepath")
            }
        case .coupon:
            return Button {
                print("www")
            } label: {
                Image(systemName: "arrow.triangle.2.circlepath")
            }
        case .bell:
            return Button {
                print("www")
            } label: {
                Image(systemName: "bell")
            }
        }
    }
}

struct HeaderView: View {
    var body: some View {
        VStack {
            HStack {
                Text("패캠님~\n반갑습니다.😄")
                Button {
                    print("button")
                } label: {
                    Image(systemName: "arrow.triangle.2.circlepath")
                }
                .foregroundColor(.black)
            }
            HStack {
                Button(action: {
                    print("button")
                }) {
                    Image(systemName: "arrow.triangle.2.circlepath")
                    Text("What's New")
                }
                .foregroundColor(.black)
                
                Button(action: {
                    print("button")
                }) {
                    Image(systemName: "arrow.triangle.2.circlepath")
                    Text("What's New")
                }
                .foregroundColor(.black)
                
                Button(action: {
                    print("button")
                }) {
                    Image(systemName: "bell")
                }
                .foregroundColor(.black)
            }
        }
    }
}

struct HeaderViewProvider_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
