//
//  Created by Mikiya Abe(@struuuuggle) on 2020/06/13.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import Rswift
import SwiftUI

struct AccoutProfileCardView: View {
  private(set) var profile: Profile
  let mockImage = R.image.jhonson

  var body: some View {
    HStack(spacing: .horizontal) {
      Image(mockImage)
        .imageStyle(.profileImage)
      VStack(alignment: .leading) {
        Text(profile.fullName)
          .textStyle(.heading)
        Text(profile.accountName)
          .textStyle(.normal)
      }
      Spacer()
    }
    .frame(height: 72)
  }
}

struct AccoutProfileCardView_Previews: PreviewProvider {
  static var previews: some View {
    AccoutProfileCardView(
      profile: Mock.Profile.profileList.first!
    )
      .previewLayout(.fixed(width: 375, height: 72))
  }
}
