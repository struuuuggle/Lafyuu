//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/22.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import SwiftUI

struct NotificationActivityView<T: BaseNotificationContent>: View {
  @State var activities: [T]

  var body: some View {
    VStack {
      ForEach(activities, id: \.id) { activity in
        NotificationRow(
          image: R.image.transaction,
          imageStyle: .notificationIcon,
          content: activity
        )
      }
      .lafyuuPadding()
      Spacer()
    }
  }
}

struct NotificationActivity_Previews: PreviewProvider {
  static var previews: some View {
    NotificationActivityView(activities: Mock.NotificationActivity.activities)
  }
}
