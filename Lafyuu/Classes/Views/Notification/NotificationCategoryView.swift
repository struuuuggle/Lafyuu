//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/22.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import SwiftUI

struct NotificationCategoryView<S, T, U>: View
  where S: BaseNotificationContent,
  T: BaseNotificationContent,
  U: BaseNotificationContent {
  @State private(set) var offers: [S]
  @State private(set) var feeds: [T]
  @State private(set) var activities: [U]

  var body: some View {
    VStack {
      NavigationLink(
        destination: NotificationOfferView(offers: offers),
        label: {
          NotificationCategoryRow(
            type: .offer,
            contents: offers
          )
      })
      NavigationLink(
        destination: NotificationFeedView(feeds: feeds),
        label: {
          NotificationCategoryRow(
            type: .feed,
            contents: feeds
          )
      })
      NavigationLink(
        destination: NotificationActivityView(activities: activities),
        label: {
          NotificationCategoryRow(
            type: .activity,
            contents: activities
          )
      })
      Spacer()
    }
  }
}

struct NotificationCategoryView_Previews: PreviewProvider {
  static var previews: some View {
    NotificationCategoryView(
      offers: Mock.NotificationOffer.offers,
      feeds: Mock.NotificationFeed.feeds,
      activities: Mock.NotificationActivity.activities
    )
  }
}
