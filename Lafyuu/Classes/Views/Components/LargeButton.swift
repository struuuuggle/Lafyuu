//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/03.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import SwiftUI

struct LargeButton: View {
  private let label: String
  private let type: ButtonType
  private let width: CGFloat
  private let height: CGFloat
  private let handler: (() -> Void)

  init(
    label: String,
    type: ButtonType = .fill,
    width: CGFloat = 343,
    height: CGFloat = 56,
    handler: @escaping (() -> Void)
  ) {
    self.label = label
    self.type = type
    self.width = width
    self.height = height
    self.handler = handler
  }

  var body: some View {
    Button(
      action: handler,
      label: {
        Text(label)
          .kerning(0.5)
          .font(R.font.poppinsBold, size: 14)
          .foregroundColor(type.fgColor)
          .padding(16)
          .frame(width: width, height: height)
    })
      .background(type.bgColor)
      .roundCorner()
      .animation(.easeOut)
  }
}

struct LargeButton_Previews: PreviewProvider {
  static var previews: some View {
    LargeButton(label: "Large Button") {
      print("Tap Large Button")
    }
    .previewLayout(.fixed(width: 375, height: 64))
  }
}
