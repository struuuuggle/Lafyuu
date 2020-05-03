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
            LaunchHeaderView(type: .login)

            VStack(spacing: 16) {
                VStack(spacing: 8) {
                    // TODO: 入力中にTextFieldをハイライトする [2020/05/03]
                    EmailTextField(placeholder: "Your Email", email: $email)
                    PasswordTextField(placeholder: "Password", password: $password)
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

    private var passwordWarningMessage: some View {
        HStack {
            Text("Oops! Your Password Is Not Correct")
                .font(R.font.poppinsBold, size: 12)
                .foregroundColor(R.color.red)
            Spacer()
        }
        .padding(.leading, 16)
        .hidden()
    }

    private var forgotPasswordText: some View {
        Text("Forgot Password?")
            .kerning(0.5)
            .font(R.font.poppinsBold, size: 12)
            .foregroundColor(R.color.blue)
    }

    private var encourageRegistrationText: some View {
        Text("Don't have a acount?")
            .kerning(0.5)
            .font(R.font.poppinsBold, size: 12)
            .foregroundColor(R.color.grey)
            +
            Text(" ")
            +
            Text("Register")
                .kerning(0.5)
                .font(R.font.poppinsBold, size: 12)
                .foregroundColor(R.color.blue)
    }
}

// MARK: - PreviewProvider
struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
