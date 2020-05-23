//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/23.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import SwiftUI

struct PaymentCardView: View {
  @State private(set) var cardInformationList: [PaymentCardInformation] = Mock.PaymentCard.cardInformationList
  var body: some View {
    VStack {
      VStack(spacing: 16) {
        ForEach(cardInformationList, id: \.id) { cardInformation in
          PaymentCard(
            cardInformation: cardInformation,
            cardType: .masterCard
          )
        }
      }

      Spacer()

      LargeButton(
        label: "Add Card",
        handler: {}
      )
    }
    .lafyuuPadding()
  }
}

struct PaymentCardView_Previews: PreviewProvider {
  static var previews: some View {
    PaymentCardView(cardInformationList: Mock.PaymentCard.cardInformationList)
  }
}
