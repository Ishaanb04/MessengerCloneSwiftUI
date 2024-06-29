//
//  LoginView.swift
//  MessengerCloneSwiftUI
//
//  Created by Ishaan Bhasin on 6/28/24.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                MessengerLogoView()
                VStack(spacing: 15) {
                    AuthenticationTextField(title: "Enter your email", textFieldText: $email)
                    AuthenticationSecureField(title: "Enter your password", secureFieldText: $password)

                    forgotPassword

                    AuthenticationMainButton(title: "Login") {
                        print("DEBUG: Login button pressed")
                    }

                    customORDivider

                    continueWithFacebookButton
                }
                .padding()
                Spacer()
                Divider()
                navigationLink
            }
        }
    }

    private var continueWithFacebookButton: some View {
        HStack {
            Image(.facebookLogo)
                .resizable()
                .scaledToFit()
                .frame(width: 20, height: 20)
            Text("Continue with Facebook")
                .font(.footnote)
                .fontWeight(.semibold)
                .foregroundStyle(Color(.systemBlue))
        }
    }

    private var customORDivider: some View {
        HStack {
            Rectangle()
                .frame(height: 1)
            Text("OR")
                .fontWeight(.semibold)
            Rectangle()
                .frame(height: 1)
        }
        .padding(.vertical, 12)
        .foregroundStyle(.gray)
        .font(.footnote)
    }

    private var forgotPassword: some View {
        Button {
            print("DEBUG: Forget password pressed")
        } label: {
            Text("Forgot password?")
                .font(.subheadline)
                .fontWeight(.semibold)
        }
        .padding(.vertical, 12)
        .frame(maxWidth: .infinity, alignment: .trailing)
    }

    private var navigationLink: some View {
        NavigationLink {
            SignUpView()
        } label: {
            HStack(spacing: 3) {
                Text("Don't have an account?")
                Text("Sign Up")
                    .fontWeight(.bold)
            }
            .font(.footnote)
        }
        .padding()
    }
}

#Preview {
    LoginView()
}
