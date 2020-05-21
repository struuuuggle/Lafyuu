//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/05.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import Rswift
import SwiftUI

enum LafyuuTextStyle {
  case heading
  case seeMore
  // MARK: Product
  case productCardTitle
  case productCardPrice
  case productRegularPrice
  case productDiscountRate
  // MARK: Notification
  case notificationOfferDescription
  case notificationOfferDate

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
    case .notificationOfferDescription:
      return R.color.grey
    case .notificationOfferDate:
      return R.color.dark
    }
  }

  var fontSize: CGFloat {
    switch self {
    case .heading:
      return 14
    case .seeMore:
      return 14
    case .productCardTitle:
      return 12
    case .productCardPrice:
      return 12
    case .productRegularPrice:
      return 10
    case .productDiscountRate:
      return 10
    case .notificationOfferDescription:
      return 12
    case .notificationOfferDate:
      return 10
    }
  }

  var fontFamily: FontResource {
    switch self {
    case .heading:
      return R.font.poppinsBold
    case .seeMore:
      return R.font.poppinsBold
    case .productCardTitle:
      return R.font.poppinsBold
    case .productCardPrice:
      return R.font.poppinsBold
    case .productRegularPrice:
      return R.font.poppinsRegular
    case .productDiscountRate:
      return R.font.poppinsBold
    case .notificationOfferDescription:
      return R.font.poppinsRegular
    case .notificationOfferDate:
      return R.font.poppinsRegular
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
