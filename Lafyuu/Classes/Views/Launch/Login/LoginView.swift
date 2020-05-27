//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/03.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import SwiftUI

protocol LoginViewDelegate: AnyObject {
  func tryToRegtister()
  func login()
}

struct LoginView: View {
  weak var delegate: LoginViewDelegate?
  let type: LaunchType = .login
  @State private var email: String = ""
  @State private var password: String = ""
  @State private var isPasswordWrong: Bool = false

  var body: some View {
    VStack(spacing: 28) {
      Spacer()
      LaunchHeaderView(type: type)

      VStack(spacing: 16) {
        VStack(spacing: .tightVertical) {
          // TODO: 入力中にTextFieldをハイライトする [2020/05/03]
          EmailTextField(placeholder: "Your Email", email: $email)
          PasswordTextField(placeholder: "Password", password: $password)
        }
        passwordWarningMessage
        LargeButton(label: "Sign In") {
          self.delegate?.login()
        }
        LoginDividerView()
        VStack(spacing: .tightVertical) {
          ThirdPartyLoginButton(loginType: .google) {
          }
          ThirdPartyLoginButton(loginType: .facebook) {
          }
        }
        forgotPasswordText
        LaunchFootnote(type: type) {
          self.delegate?.tryToRegtister()
        }
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
      .kerning(Constant.Text.kerning)
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
