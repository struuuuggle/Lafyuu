//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/03.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import SwiftUI

protocol RegisterViewDelegate: AnyObject {
  func tryToLogin()
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

      VStack(spacing: 16) {
        formStack
        LargeButton(label: "Sign Up") {
        }
      }
      LaunchFootnote(type: type) {
        self.delegate?.tryToLogin()
      }
      Spacer()
    }
  }
}

// MARK: - private properties
extension RegisterView {
  private var formStack: some View {
    VStack(spacing: 8) {
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
