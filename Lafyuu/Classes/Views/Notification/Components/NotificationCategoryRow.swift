//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/22.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import Rswift
import SwiftUI

enum NotificationContentType: String {
  case offer
  case feed
  case activity

  var text: String {
    self.rawValue
  }

  var image: ImageResource {
    switch self {
    case .offer:
      return R.image.offer
    case .feed:
      return R.image.list
    case .activity:
      return R.image.notification
    }
  }
}

struct NotificationCategoryRow<T: BaseNotificationContent>: View {
  private(set) var type: NotificationContentType
  private(set) var contents: [T]

  var body: some View {
    HStack(spacing: .horizontal) {
      Image(type.image)
        .imageStyle(.notificationIcon)
      Text(type.text)
        .textStyle(.heading)

      Spacer()

      Image(R.image.alert_red)
        .resizable()
        .frame(width: 24, height: 24) // TODO: Set actual number [2020/05/22]

    }
    .lafyuuPadding()
    .frame(height: 56)
  }
}

struct NotificationCategoryRow_Previews: PreviewProvider {
  static var previews: some View {
    Group {
      NotificationCategoryRow(
        type: .offer,
        contents: Mock.NotificationOffer.offers
      )
        .previewLayout(.fixed(width: 375, height: 60))
        .previewDisplayName(NotificationContentType.offer.text)

      NotificationCategoryRow(
        type: .feed,
        contents: Mock.NotificationOffer.offers
      )
        .previewLayout(.fixed(width: 375, height: 60))
        .previewDisplayName(NotificationContentType.feed.text)

      NotificationCategoryRow(
        type: .activity,
        contents: Mock.NotificationOffer.offers
      )
        .previewLayout(.fixed(width: 375, height: 60))
        .previewDisplayName(NotificationContentType.activity.text)
    }
  }
}
