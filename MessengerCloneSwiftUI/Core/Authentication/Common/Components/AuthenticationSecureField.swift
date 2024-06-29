//
//  AuthenticationSecureField.swift
//  MessengerCloneSwiftUI
//
//  Created by Ishaan Bhasin on 6/28/24.
//

import SwiftUI

struct AuthenticationSecureField : View {
    let title: String
    @Binding var secureFieldText: String
    var body: some View {
        SecureField(title, text: $secureFieldText)
            .font(.subheadline)
            .padding(12)
            .background(Color(.systemGray6))
            .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

#Preview {
    AuthenticationSecureField(title: "Enter your password", secureFieldText: .constant(""))
}
