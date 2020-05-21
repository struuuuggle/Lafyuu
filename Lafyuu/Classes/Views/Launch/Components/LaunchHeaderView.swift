//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/03.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import SwiftUI

struct LaunchHeaderView: View {
  let type: LaunchType

  var body: some View {
    VStack(spacing: 16) {
      appIcon
      VStack(spacing: .tightVertical) {
        title
        subtitle
      }
    }
  }
}

// MARK: - private properties
extension LaunchHeaderView {
  var appIcon: some View {
    Image(R.image.app_icon_blue)
      .frame(width: 72, height: 72)
  }

  var title: some View {
    Text(type.title)
      .kerning(0.5)
      .font(R.font.poppinsBold, size: 16)
      .foregroundColor(R.color.dark)
  }

  var subtitle: some View {
    Text(type.subtitle)
      .kerning(0.5)
      .font(R.font.poppinsRegular, size: 12)
      .foregroundColor(R.color.grey)
      .frame(height: 22)
  }
}

struct LaunchHeaderView_Previews: PreviewProvider {
  static var previews: some View {
    LaunchHeaderView(type: .login)
  }
}
