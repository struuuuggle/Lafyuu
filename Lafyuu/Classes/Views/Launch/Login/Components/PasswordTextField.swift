//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/03.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import SwiftUI

struct PasswordTextField: View {
    @Binding private(set) var password: String
    let width: CGFloat
    let height: CGFloat

    init(password: Binding<String>, width: CGFloat = 343, height: CGFloat = 48) {
        self._password = password
        self.width = width
        self.height = height
    }

    var body: some View {
        ZStack {
            tfBackground
            HStack(spacing: 10) {
                icon
                textField
            }
            .padding([.leading, .trailing], 16)
        }
        .frame(
            width: width,
            height: height
        )
    }
}

// MARK: - private properties
extension PasswordTextField {
    private var tfBackground: some View {
        Rectangle()
            .foregroundColor(.white)
            .roundCorner(with: R.color.light)
    }

    private var icon: some View {
        Image(R.image.password)
            .frame(
                width: 24,
                height: 24
        )
    }

    private var textField: some View {
        SecureField(
            "Password",
            text: $password,
            onCommit: ({
            })
        )
            .font(
                // TODO: stateを作ったら入力中のfontを変更 [2020/05/03]
                R.font.poppinsRegular,
                size: 12
        )
            .foregroundColor(
                R.color.grey()!.color
        )
    }
}

struct PasswordTextField_Previews: PreviewProvider {
    static var previews: some View {
        PasswordTextField(password: .constant(""), width: 343, height: 48)
    }
}
