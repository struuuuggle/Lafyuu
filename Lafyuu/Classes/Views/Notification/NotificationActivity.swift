//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/22.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import SwiftUI

struct NotificationActivity: View {
  @State var activities: [Activity]

  var body: some View {
    VStack {
      ForEach(activities, id: \.id) { activity in
        NotificationRow(
          image: R.image.transaction,
          imageSize: .icon,
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
    NotificationActivity(activities: Mock.NotificationActivity.activities)
  }
}
