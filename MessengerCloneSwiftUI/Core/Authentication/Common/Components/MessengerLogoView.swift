//
//  MessengerLogoView.swift
//  MessengerCloneSwiftUI
//
//  Created by Ishaan Bhasin on 6/28/24.
//

import SwiftUI

struct MessengerLogoView: View {
    var body: some View {
        Image(.messengerAppIcon)
            .resizable()
            .scaledToFit()
            .frame(width: 150, height: 150)
            .shadow(radius: 10, x: 5, y: 5)
    }
}

#Preview {
    MessengerLogoView()
}
