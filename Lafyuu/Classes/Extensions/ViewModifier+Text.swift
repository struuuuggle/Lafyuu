//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/05.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import Rswift
import SwiftUI

enum LafyuuTextStyle {
  // MARK: Heading
  case heading
  case heading6
  // MARK: Body Text
  case normal
  case seeMore
  case largeButtonLabel
  // MARK: Product
  case productCardTitle
  case productCardPrice
  case productRegularPrice
  case productDiscountRate
  // MARK: Notification
  case notificationOfferDescription
  case notificationOfferDate
  // MARK: PaymentCard
  case paymentCardNumber
  case paymentCardHolderLabel
  case paymentCardExpireDateLabel
  // MARK: Alert
  case alertMessage

  var color: ColorResource {
    switch self {
    case .heading:
      return R.color.dark
    case .heading6:
      return R.color.white
    case .normal:
      return R.color.grey
    case .seeMore:
      return R.color.blue
    case .largeButtonLabel:
      return R.color.white
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
    case .paymentCardNumber:
      return R.color.white
    case .paymentCardHolderLabel:
      return R.color.white
    case .paymentCardExpireDateLabel:
      return R.color.white
    case .alertMessage:
      return R.color.red
    }
  }

  var fontSize: CGFloat {
    switch self {
    case .heading:
      return 14
    case .heading6:
      return 10
    case .normal:
      return 12
    case .seeMore:
      return 14
    case .largeButtonLabel:
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
    case .paymentCardNumber:
      return 24
    case .paymentCardHolderLabel:
      return 10
    case .paymentCardExpireDateLabel:
      return 10
    case .alertMessage:
      return 12
    }
  }

  var fontFamily: FontResource {
    switch self {
    case .heading:
      return R.font.poppinsBold
    case .heading6:
      return R.font.poppinsBold
    case .normal:
      return R.font.poppinsRegular
    case .seeMore:
      return R.font.poppinsBold
    case .largeButtonLabel:
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
    case .paymentCardNumber:
      return R.font.poppinsBold
    case .paymentCardHolderLabel:
      return R.font.poppinsRegular
    case .paymentCardExpireDateLabel:
      return R.font.poppinsRegular
    case .alertMessage:
      return R.font.poppinsBold
    }
  }

  var opacity: Double {
    switch self {
    case .paymentCardHolderLabel, .paymentCardExpireDateLabel:
      return 0.5
    default:
      return 1.0
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
      .kerning(Constant.Text.kerning)
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
        .opacity(style.opacity)
    }
  }
}
