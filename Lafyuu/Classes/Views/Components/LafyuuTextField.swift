//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/25.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import SwiftUI

struct LafyuuTextField: View {
  private(set) var placeholder: String
  @Binding private(set) var text: String
  var body: some View {
    TextField(
      placeholder,
      text: $text
    )
      .font(R.font.poppinsRegular, size: 12)
      .foregroundColor(.init(R.color.grey))
      .frame(height: Constant.TextField.height)
      .offset(x: 16)
      .roundCorner(with: R.color.light)
  }
}

struct LafyuuTextField_Previews: PreviewProvider {
  @State static var text: String = ""
  static var previews: some View {
    LafyuuTextField(
      placeholder: "Enter Card Number",
      text: $text
    )
      .lafyuuPadding()
      .previewLayout(.fixed(width: 375, height: 60))
  }
}
