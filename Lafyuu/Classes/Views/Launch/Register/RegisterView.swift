//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/03.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import SwiftUI

protocol RegisterViewDelegate: AnyObject {
  func tryToLogin()
  func signUp()
}

struct RegisterView: View {
  weak var delegate: RegisterViewDelegate?
  let type: LaunchType = .register
  @State private var fullName: String = ""
  @State private var email: String = ""
  @State private var password: String = ""
  @State private var passwordAgain: String = ""

  var body: some View {
    VStack(spacing: 28) {
      Spacer()
      LaunchHeaderView(type: type)

      formContainer

      LaunchFootnote(type: type) {
        self.delegate?.tryToLogin()
      }
      Spacer()
    }
  }
}

// MARK: - private properties
extension RegisterView {
  private var formContainer: some View {
    VStack(spacing: 16) {
      formStack
      LargeButton(label: "Sign Up") {
        self.delegate?.signUp()
      }
    }
    .padding(.horizontal, .horizontal)
  }

  private var formStack: some View {
    VStack(spacing: .tightVertical) {
      NameTextField(
        placeholder: "Full Name",
        name: $fullName
      )
      EmailTextField(
        placeholder: "Your Email",
        email: $email
      )
      PasswordTextField(
        placeholder: "Password",
        password: $password
      )
      PasswordTextField(
        placeholder: "Password AGain",
        password: $passwordAgain
      )
    }
  }
}

struct RegisterView_Previews: PreviewProvider {
  static var previews: some View {
    RegisterView()
  }
}
