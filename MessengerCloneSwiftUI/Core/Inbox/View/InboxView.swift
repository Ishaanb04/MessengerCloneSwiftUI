//
//  InboxView.swift
//  MessengerCloneSwiftUI
//
//  Created by Ishaan Bhasin on 6/28/24.
//

import SwiftUI

struct InboxView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                ActiveNowView()
            }
                .toolbar {
                    ToolbarItem(placement: .topBarLeading) {
                        HStack {
                            Image(systemName: "person.circle.fill")
                                .resizable()
                                .frame(width: 32, height: 32)
                            Text("Chats")
                                .font(.title)
                                .fontWeight(.semibold)
                        }
                    }
                    ToolbarItem(placement: .topBarTrailing) {
                        Button {
                            print("DEBUG: New message button clicked")
                        } label: {
                            Image(systemName: "square.and.pencil.circle.fill")
                                .resizable()
                                .frame(width: 32, height: 32)
                                .foregroundStyle(.black, Color(.systemGray5))
                        }
                    }
                }
        }
    }
}

#Preview {
    InboxView()
}
