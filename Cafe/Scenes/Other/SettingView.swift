//
//  SettingView.swift
//  Cafe
//
//  Copyright (c) 2023 oasis444. All right reserved.
//

import SwiftUI

struct SettingView: View {
    var body: some View {
        List {
            Section(User.shared.userName) {
                SettingUserInfoSectionView()
            }
            Spacer()
            Section {
                Button("회원 정보 수정") {
                    print("수정")
                }
                Button("회원 탈퇴") {
                    print("탈퇴")
                }
            }
        }
        .navigationTitle("설정")
        .navigationBarTitleDisplayMode(.inline)
        .listStyle(.plain)
    }
}

struct SettingUserInfoSectionView: View {
    var body: some View {
        HStack(alignment: .top) {
            VStack(alignment: .leading) {
                Text(User.shared.userName)
                    .font(.title)
                Text(User.shared.account)
                    .font(.caption)
            }
            Spacer()
            Button(action: {
                print("로그아웃")
            }) {
                Text("로그아웃")
                    .font(.system(size: 14, weight: .bold))
                    .foregroundColor(.green)
                    .padding(8)
                    .overlay(Capsule().stroke(Color.green))
            }
        }
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
