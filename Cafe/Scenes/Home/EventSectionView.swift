//
//  EventSectionView.swift
//  Cafe
//
//  Copyright (c) 2023 oasis444. All right reserved.
//

import SwiftUI

struct EventSectionView: View {
    @Binding var events: [Event]
    
    var body: some View {
        VStack {
            HStack {
                Text("Events")
                Spacer()
                Button(action: {
                    print("See all")
                }) {
                    Text("See all")
                        .font(.subheadline)
                        .tint(.green)
                }
            }
            .padding(.horizontal, 16)
            
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack(spacing: 16) {
                    ForEach(events) {
                        EventSectionItemView(event: $0)
                    }
                }
                .padding(.horizontal, 16)
            }
        }
    }
}

struct EventSectionItemView: View {
    let event: Event
    
    var body: some View {
        VStack {
            event.image
                .resizable()
                .scaledToFill()
                .frame(height: 150)
                .clipped()
            Text(event.title)
                .frame(maxWidth: .infinity, alignment: .leading)
                .font(.headline)
            Text(event.description)
                .lineLimit(1)
                .font(.callout)
                .frame(maxWidth: .infinity, alignment: .topLeading)
        }
        .frame(width: UIScreen.main.bounds.width - 32)
    }
}

struct EventSectionView_Previews: PreviewProvider {
    static var previews: some View {
        @ObservedObject var viewModel = HomeVM()
        EventSectionView(events: $viewModel.events)
    }
}
