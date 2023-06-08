//
//  HomeHeaderView.swift
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
    
    var buttonName: String {
        switch self {
        case .refresh:
            return "arrow.triangle.2.circlepath"
        case .new:
            return "mail"
        case .coupon:
            return "ticket"
        case .bell:
            return "bell"
        }
    }
    
    static var buttonSize: CGFloat {
        return 16
    }
}

struct HomeHeaderView: View {
    @Binding var isNeedToReload: Bool
    
    var body: some View {
        VStack(spacing: 16) {
            HStack(alignment: .top) {
                Text("\(User.shared.userName)님~\n반갑습니다! 😄")
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity, alignment: .leading)
                Button {
                    isNeedToReload = true
                } label: {
                    Image(systemName: HeaderButton.refresh.buttonName)
                }
            }
            HStack {
                Button {
                    print("New")
                } label: {
                    Image(systemName: HeaderButton.new.buttonName)
                        .foregroundColor(.secondary)
                    Text("What's New")
                        .foregroundColor(.primary)
                        .font(.system(size: HeaderButton.buttonSize, weight: .semibold))
                }
                Button(action: {
                    print("Coupon")
                }) {
                    Image(systemName: HeaderButton.coupon.buttonName)
                        .foregroundColor(.secondary)
                    Text("Coupon")
                        .foregroundColor(.primary)
                        .font(.system(size: HeaderButton.buttonSize, weight: .semibold))
                }
                Spacer()
                Button(action: {
                    print("Bell")
                }) {
                    Image(systemName: HeaderButton.bell.buttonName)
                        .foregroundColor(.secondary)
                }
            }
        }
        .padding(16)
    }
}

struct HeaderViewProvider_Previews: PreviewProvider {
    static var previews: some View {
        @ObservedObject var viewModel = HomeVM()
        HomeHeaderView(isNeedToReload: $viewModel.isNeedToReload)
    }
}
