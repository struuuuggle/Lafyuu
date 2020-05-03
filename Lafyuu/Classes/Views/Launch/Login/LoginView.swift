//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/03.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import SwiftUI

struct LoginView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var isPasswordWrong: Bool = false

    var body: some View {
        VStack(spacing: 28) {
            Spacer()
            header

            VStack(spacing: 16) {
                VStack(spacing: 8) {
                    // TODO: 入力中にTextFieldをハイライトする [2020/05/03]
                    EmailTextField(email: $email)
                    PasswordTextField(password: $password)
                }
                passwordWarningMessage
                LargeButton(label: "Sign In") {
                }
                LoginDividerView()
                VStack(spacing: 8) {
                    ThirdPartyLoginButton(loginType: .google) {
                    }
                    ThirdPartyLoginButton(loginType: .facebook) {
                    }
                }
                forgotPasswordText
                encourageRegistrationText
                Spacer()
            }
        }
    }
}

// MARK: - private properties
extension LoginView {
    private var header: some View {
        VStack(spacing: 16) {
            Image(R.image.app_icon)
                .frame(width: 72, height: 72)
            VStack(spacing: 8) {
                Text("Welcome to Lafyuu")
                    .kerning(0.5)
                    .font(R.font.poppinsBold, size: 16)
                    .foregroundColor(R.color.dark()!.color)

                Text("Sign in to continue")
                    .kerning(0.5)
                    .font(R.font.poppinsRegular, size: 12)
                    .foregroundColor(R.color.grey()!.color)
                    .frame(height: 22)
            }
        }
    }

    private var passwordWarningMessage: some View {
        HStack {
            Text("Oops! Your Password Is Not Correct")
                .font(R.font.poppinsBold, size: 12)
                .foregroundColor(R.color.red()!.color)
            Spacer()
        }
        .padding(.leading, 16)
        .hidden()
    }

    private var forgotPasswordText: some View {
        Text("Forgot Password?")
            .kerning(0.5)
            .font(R.font.poppinsBold, size: 12)
            .foregroundColor(R.color.blue()!.color)
    }

    private var encourageRegistrationText: some View {
        Text("Don't have a acount?")
            .kerning(0.5)
            .font(R.font.poppinsBold, size: 12)
            .foregroundColor(R.color.grey()!.color)
            +
            Text(" ")
            +
            Text("Register")
                .kerning(0.5)
                .font(R.font.poppinsBold, size: 12)
                .foregroundColor(R.color.blue()!.color)
    }
}

// MARK: - PreviewProvider
struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
