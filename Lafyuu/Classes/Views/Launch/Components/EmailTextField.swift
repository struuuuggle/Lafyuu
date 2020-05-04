//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/03.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import SwiftUI

struct EmailTextField: View {
  @Binding private(set) var email: String
  let placeholder: String
  let width: CGFloat
  let height: CGFloat

  init(placeholder: String, email: Binding<String>, width: CGFloat = 343, height: CGFloat = 48) {
    self.placeholder = placeholder
    self._email = email
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
    .accentColor(Color.blue)
    .frame(
      width: width,
      height: height
    )
  }
}

// MARK: - private properties
extension EmailTextField {
  private var tfBackground: some View {
    Rectangle()
      .foregroundColor(R.color.white)
      .roundCorner(with: R.color.light)
  }

  private var icon: some View {
    Image(R.image.message)
      .frame(width: 24, height: 24)
  }

  private var textField: some View {
    TextField(
      placeholder,
      text: $email,
      onEditingChanged: ({ _ in
      }),
      onCommit: ({
      })
    )
      // TODO: stateを作ったら入力中のfontをboldに変更 [2020/05/03]
      .font(R.font.poppinsRegular, size: 12)
  }
}

struct EmailTextField_Previews: PreviewProvider {
  static var previews: some View {
    EmailTextField(
      placeholder: "Your Email", email: .constant("")
    )
      .previewLayout(.fixed(width: 375, height: 64))
  }
}
