//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/03.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import SwiftUI

struct LargeButton: View {
  private(set) var label: String
  private(set) var type: ButtonType
  private(set) var handler: (() -> Void)

  init(label: String, type: ButtonType = .fill, handler: @escaping (() -> Void)) {
    self.label = label
    self.type = type
    self.handler = handler
  }

  var body: some View {
    Button(
      action: handler,
      label: { buttonLabel }
    )
      .animation(.easeOut)
  }
}

// MARK: - Private properties
extension LargeButton {
  private var buttonLabel: some View {
    ZStack {
      largeButtonBackground

      Text(label)
        .textStyle(.largeButtonLabel)
    }
    .frame(height: Constant.LargeButton.height)
  }

  private var largeButtonBackground: some View {
    Rectangle()
      .foregroundColor(R.color.blue)
      .roundCorner()
  }
}

struct LargeButton_Previews: PreviewProvider {
  static var previews: some View {
    LargeButton(label: "Large Button") {
      print("Tap Large Button")
    }
    .lafyuuPadding()
    .previewLayout(.fixed(width: 375, height: 100))
  }
}
