//
//  SignUpView.swift
//  MessengerCloneSwiftUI
//
//  Created by Ishaan Bhasin on 6/28/24.
//

import SwiftUI

struct SignUpView: View {
    @State private var email = ""
    @State private var fullName = ""
    @State private var password = ""
    
    @Environment (\.dismiss) private var dismiss

    var body: some View {
        VStack {
            Spacer()
            MessengerLogoView()
            VStack(spacing: 15) {
                AuthenticationTextField(title: "Enter your email", textFieldText: $email)
                    .textInputAutocapitalization(.never)
                AuthenticationTextField(title: "Enter your full name", textFieldText: $fullName)
                AuthenticationSecureField(title: "Enter your password", secureFieldText: $password)
                AuthenticationMainButton(title: "Sign Up") {
                    print("DEBUG: Sign Up pressed")
                }
                .padding(.top)
            }
            .padding()
            Spacer()
            Divider()
            navigationButton
        }
        
    }

    private var navigationButton: some View {
        Button {
            
            dismiss()
        } label: {
            HStack(spacing: 3) {
                Text("Already have an account? ")
                Text("Sign In")
                    .fontWeight(.bold)
            }
            .font(.footnote)
        }
        .padding()
    }
}

#Preview {
    SignUpView()
}
