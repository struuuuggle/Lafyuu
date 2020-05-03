//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/03.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import SwiftUI

struct RegisterView: View {
    @State private var fullName: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var passwordAgain: String = ""

    var body: some View {
        VStack(spacing: 28) {
            Spacer()
            LaunchHeaderView(type: .register)

            VStack(spacing: 16) {
                VStack(spacing: 8) {
                    NameTextField(placeholder: "Full Name", name: $fullName)
                    EmailTextField(placeholder: "Your Email", email: $email)
                    PasswordTextField(placeholder: "Password", password: $password)
                    PasswordTextField(placeholder: "Password AGain", password: $passwordAgain)
                }
                LargeButton(label: "Sign Up") {
                }
            }
            noAccountText
            Spacer()
        }
    }
}

// MARK: - private properties
extension RegisterView {
    var noAccountText: some View {
        Text("Already have a account?")
            .kerning(0.5)
            .font(R.font.poppinsBold, size: 12)
            .foregroundColor(R.color.grey)
            +
            Text(" ")
            +
            Text("Sign In")
                .kerning(0.5)
                .font(R.font.poppinsBold, size: 12)
                .foregroundColor(R.color.blue)
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
