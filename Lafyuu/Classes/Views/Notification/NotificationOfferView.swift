//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/21.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import SwiftUI

struct Offer: Codable, Identifiable {
  let id: UUID
  let title: String
  let description: String
  let date: Date
}

struct NotificationOfferRow: View {
  private(set) var offer: Offer

  var body: some View {
    HStack(alignment: .top, spacing: 12) {
      Image(R.image.offer)
        .renderingMode(.template)
        .foregroundColor(R.color.blue)
      VStack(alignment: .leading, spacing: 8) {
        Text(offer.title)
          .textStyle(.heading)
        Text(offer.description)
          .kerning(0.5)
          .font(R.font.poppinsRegular, size: 12)
          .foregroundColor(R.color.grey)
        Text(offer.date.yMMMdhm12(local: .us))
          .kerning(0.5)
          .font(R.font.poppinsRegular, size: 10)
          .foregroundColor(R.color.dark)
      }
    }
  }
}

struct NotificationOfferView: View {
  @State var offers: [Offer]

  var body: some View {
    VStack {
      ForEach(offers, id: \.id) { offer in
        NotificationOfferRow(offer: offer)
      }
      .lafyuuPadding()
      Spacer()
    }
  }
}

struct NotificationOfferView_Previews: PreviewProvider {
  static var previews: some View {
    NotificationOfferView(offers: Mock.NotificationOffer.offers)
  }
}
