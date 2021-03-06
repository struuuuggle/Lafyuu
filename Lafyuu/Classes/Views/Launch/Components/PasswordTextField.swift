//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/03.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import SwiftUI

struct PasswordTextField: View {
  @Binding private(set) var password: String
  let placeholder: String
  let height: CGFloat

  init(placeholder: String, password: Binding<String>, height: CGFloat = 48) {
    self.placeholder = placeholder
    self._password = password
    self.height = height
  }

  var body: some View {
    ZStack {
      tfBackground
      HStack(spacing: Constant.Spacing.inline.rawValue) {
        icon
        textField
      }
      .padding(.horizontal, 16)
    }
    .frame(height: height)
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
      placeholder,
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
        R.color.grey
    )
  }
}

struct PasswordTextField_Previews: PreviewProvider {
  static var previews: some View {
    PasswordTextField(
      placeholder: "Password", password: .constant(""),
      height: 48
    )
      .lafyuuPadding()
      .previewLayout(.fixed(width: 375, height: 64))
  }
}
