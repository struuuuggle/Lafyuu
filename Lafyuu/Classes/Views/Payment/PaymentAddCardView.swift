//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/23.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import SwiftUI

struct PaymentAddCardView: View {
  @State private(set) var cardNumberText: String = ""
  @State private(set) var expirationDate: String = ""
  @State private(set) var securityCodeText: String = ""
  @State private(set) var cardHolderText: String = ""

  var body: some View {
    VStack(alignment: .leading, spacing: .wideVertical) {
      alertMessage(message: "Security Code is wrong")

      form(
        leadingText: "Card Number",
        placeholder: "Enter Card Number",
        text: $cardNumberText
      )

      HStack(spacing: .tightVertical) {
        form(
          leadingText: "Expiration Date",
          placeholder: "Expiration Date",
          text: $expirationDate
        )
        form(
          leadingText: "Security Code",
          placeholder: "Security Code",
          text: $securityCodeText
        )
      }

      form(
        leadingText: "Card Holder",
        placeholder: "Enter Card Number",
        text: $cardHolderText
      )

      Spacer()
    }
  }
}

// MARK: - Private properties
extension PaymentAddCardView {
  private func alertMessage(message: String) -> some View {
    HStack(spacing: 8) {
      Image(R.image.alert_red)
        .resizable()
        .frame(width: Constant.Icon.Size.small, height: Constant.Icon.Size.small)
      Text(message)
        .textStyle(.alertMessage)
    }
  }

  private func form(leadingText: String, placeholder: String, text: Binding<String>) -> some View {
    VStack(alignment: .leading, spacing: 12) {
      Text(leadingText)
        .textStyle(.heading)

      LafyuuTextField(
        placeholder: placeholder,
        text: text
      )
      // TODO: highlight me when validation error [2020/05/25]
    }
  }
}

struct PaymentAddCardView_Previews: PreviewProvider {
  static var previews: some View {
    PaymentAddCardView()
      .lafyuuPadding()
  }
}
