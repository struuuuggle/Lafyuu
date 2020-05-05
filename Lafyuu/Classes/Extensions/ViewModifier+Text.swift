//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/05.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import Rswift
import SwiftUI

enum LafyuuTextStyle {
  case heading
  case seeMore
  case productCardTitle
  case productCardPrice
  case productRegularPrice
  case productDiscountRate

  var color: ColorResource {
    switch self {
    case .heading:
      return R.color.dark
    case .seeMore:
      return R.color.blue
    case .productCardTitle:
      return R.color.dark
    case .productCardPrice:
      return R.color.blue
    case .productRegularPrice:
      return R.color.grey
    case .productDiscountRate:
      return R.color.red
    }
  }

  var fontSize: CGFloat {
    switch self {
    case .productRegularPrice, .productDiscountRate:
      return 10
    case .productCardTitle, .productCardPrice:
      return 12
    default:
      return 14
    }
  }

  var fontFamily: FontResource {
    switch self {
    case .productRegularPrice:
      return R.font.poppinsRegular
    default:
      return R.font.poppinsBold
    }
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
        .font(style.fontFamily, size: style.fontSize)
        .foregroundColor(style.color)
    }
  }
}
