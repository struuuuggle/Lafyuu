//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/03.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import SwiftUI

struct LoginView: View {
    @State var email: String = ""
    @State var password: String = ""

    var body: some View {
        VStack(spacing: 16) {
            Spacer()
            VStack(spacing: 8) {
                EmailTextField(email: $email)
                PasswordTextField(password: $password)
            }
            LargeButton(label: "Sign In") {
            }
            Spacer()
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
