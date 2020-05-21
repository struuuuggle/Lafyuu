//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/21.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import SwiftUI

struct NotificationOfferView: View {
  @State var offers: [Offer]

  var body: some View {
    VStack {
      ForEach(offers, id: \.id) { offer in
        NotificationRow(
          image: R.image.offer,
          imageStyle: .notificationIcon,
          content: offer
        )
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
