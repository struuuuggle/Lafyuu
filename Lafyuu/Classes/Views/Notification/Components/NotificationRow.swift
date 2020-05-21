//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/21.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import Rswift
import SwiftUI

struct NotificationRow<T: BaseNotificationContent>: View {
  private(set) var image: ImageResource
  private(set) var imageStyle: LafyuuImageStyle
  private(set) var content: T

  var body: some View {
    HStack(alignment: .top, spacing: .tightHorizontal) {
      Image(image)
        .imageStyle(imageStyle)
      VStack(alignment: .leading, spacing: .tightVertical) {
        Text(content.title)
          .textStyle(.heading)
        Text(content.description)
          .textStyle(.notificationOfferDescription)
        Text(content.date.yMMMdhm12(local: .us))
          .textStyle(.notificationOfferDate)
      }
    }
  }
}

struct NotificationOfferRow_Previews: PreviewProvider {
  static var previews: some View {
    Group {
      NotificationRow(
        image: R.image.offer,
        imageStyle: .notificationIcon,
        content: Mock.NotificationOffer.offers.randomElement()!
      )
        .lafyuuPadding()
        .previewLayout(.fixed(width: 400, height: 160))

      NotificationRow(
        image: Mock.ProductImage.allCases.randomElement()!.image,
        imageStyle: .notificationFeedThumbnail,
        content: Mock.NotificationFeed.feeds.randomElement()!
      )
        .lafyuuPadding()
        .previewLayout(.fixed(width: 400, height: 160))

      NotificationRow(
        image: R.image.transaction,
        imageStyle: .notificationIcon,
        content: Mock.NotificationActivity.activities.randomElement()!
      )
        .lafyuuPadding()
        .previewLayout(.fixed(width: 400, height: 160))
    }
  }
}
