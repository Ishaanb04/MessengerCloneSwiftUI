//
//  ActiveNowView.swift
//  MessengerCloneSwiftUI
//
//  Created by Ishaan Bhasin on 7/3/24.
//

import SwiftUI

struct ActiveNowView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 32) {
                ForEach(User.MOCK_USER) { user in
                    getActiveUserView(for: user.name, with: user.imageName)
                }
            }
            .padding()
        }
        .frame(maxHeight: 120)
        
    }

    private func getActiveUserView(for userName: String, with imageName: String) -> some View {
        VStack {
            Image(imageName)
                .resizable()
                .frame(width: 64, height: 64)
                .clipShape(Circle())
                .overlay(alignment: .bottomTrailing) {
                    Circle()
                        .frame(width: 18, height: 18)
                        .foregroundStyle(.primaryBackground)
                    Circle()
                        .frame(width: 12, height: 12)
                        .foregroundStyle(.green)
                }

            Text(userName)
                .font(.subheadline)
                .foregroundStyle(.gray)
        }
    }
}

#Preview {
    ActiveNowView()
}
