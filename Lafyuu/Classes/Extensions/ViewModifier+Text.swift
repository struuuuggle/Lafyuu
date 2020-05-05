//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/05.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import Rswift
import SwiftUI

enum LafyuuTextStyle {
  case heading
  case seeMore

  var color: ColorResource {
    switch self {
    case .heading:
      return R.color.dark
    case .seeMore:
      return R.color.blue
    }
  }

  var fontSize: CGFloat {
    14
  }
}

extension Text: ViewModifier {
  /// Define Lafyuu style of `Text`
  /// - Parameter style: style of `Text`
  /// - Returns: View
  ///
  /// You can use this method like this:
  ///
  ///     Text("Category")
  ///       .textStyle(.heading)
  ///
  func textStyle(_ style: LafyuuTextStyle) -> some View {
    self
      .kerning(0.5)
      .modifier(LafyuuTextModifier(style))
  }

  struct LafyuuTextModifier: ViewModifier {
    let style: LafyuuTextStyle

    init(_ style: LafyuuTextStyle) {
      self.style = style
    }

    func body(content: Content) -> some View {
      content
        .font(R.font.poppinsBold, size: style.fontSize)
        .foregroundColor(style.color)
    }
  }
}
