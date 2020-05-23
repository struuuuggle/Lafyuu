//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/24.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import Foundation
import SwiftUI

struct PaymentCard: View {
  @State private(set) var cardInformation: PaymentCardInformation
  private(set) var cardType: PaymentCardType

  var body: some View {
    ZStack(alignment: .leading) {
      cardBackground

      VStack(alignment: .leading) {
        cardLogo
        Spacer()
          .frame(height: 30)
        cardNumber
        Spacer()
          .frame(height: 20)
        HStack(spacing: 28) {
          nameStack; expireDateStack
        }
      }
      .padding(.leading, 24)
    }
    .frame(height: 190)
  }
}

// MARK: - Private properties
extension PaymentCard {
  private var cardBackground: some View {
    Rectangle()
      .foregroundColor(cardType.color)
      .roundCorner()
  }

  private var cardLogo: some View {
    // TODO: view.layer.compositingFilter = "multiplyBlendMode" [2020/05/25]
    // FIXME: implemented mastercard only
    HStack(spacing: -8) {
      Circle()
        .frame(width: 22, height: 22)
        .foregroundColor(.init(hex: "#C4C4C4"))
      Circle()
        .frame(width: 22, height: 22)
        .foregroundColor(.init(hex: "#C4C4C4"))
    }
  }

  private var cardNumber: some View {
    HStack(spacing: 40) {
      Text(cardNumberText)
        .textStyle(.paymentCardNumber)
    }
  }

  private var cardNumberText: String {
    // TODO: Add spacing [2020/05/25]
    // cardInformation.number.split(separator: "_").joined(separator: " ")
    cardInformation.number
  }

  private var nameStack: some View {
    VStack(alignment: .leading, spacing: 4) {
      Text("CARD HOLDER")
        .textStyle(.paymentCardHolderLabel)

      Text("\(cardInformation.firstName) \(cardInformation.lastName)")
        .textStyle(.heading6)
    }
  }

  private var expireDateStack: some View {
    VStack(alignment: .leading, spacing: 4) {
      Text("CARD SAVE")
        .textStyle(.paymentCardExpireDateLabel)

      Text("\(cardInformation.expiringMonth)/\(cardInformation.expiringYear.description)")
        .textStyle(.heading6)
    }
  }
}

struct PaymentCard_Previews: PreviewProvider {
  static var previews: some View {
    Group {
      PaymentCard(
        cardInformation: Mock.PaymentCard.cardInformationList.randomElement()!,
        cardType: .masterCard
      )
        .lafyuuPadding()
        .previewLayout(.fixed(width: 375, height: 210))
        .previewDisplayName("MasterCard")

      PaymentCard(
        cardInformation: Mock.PaymentCard.cardInformationList.randomElement()!,
        cardType: .visa
      )
        .lafyuuPadding()
        .previewLayout(.fixed(width: 375, height: 210))
        .previewDisplayName("VISA")
    }
  }
}
