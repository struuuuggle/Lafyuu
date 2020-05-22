//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/22.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import SwiftUI

struct NotificationFeedView<T: BaseNotificationContent>: View {
  @State var feeds: [T]

  var body: some View {
    VStack {
      ForEach(feeds, id: \.id) { feed in
        NotificationRow(
          image: Mock.ProductImage.allCases.randomElement()!.image,
          imageStyle: .notificationFeedThumbnail,
          content: feed
        )
      }
      .lafyuuPadding()
      Spacer()
    }
  }
}

struct NotificationFeedView_Previews: PreviewProvider {
  static var previews: some View {
    NotificationFeedView(feeds: Mock.NotificationFeed.feeds)
  }
}
