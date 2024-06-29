//
//  AuthenticationTextField.swift
//  MessengerCloneSwiftUI
//
//  Created by Ishaan Bhasin on 6/28/24.
//

import SwiftUI

struct AuthenticationTextField: View {
    let title: String
    @Binding var textFieldText: String
    var body: some View {
        TextField(title, text: $textFieldText)
            .font(.subheadline)
            .padding(12)
            .background(Color(.systemGray6))
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .autocorrectionDisabled()
    }
}

#Preview {
    AuthenticationTextField(title: "Enter your email", textFieldText: .constant(""))
}
