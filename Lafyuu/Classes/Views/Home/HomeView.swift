//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/03.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import SwiftUI

struct HomeView: View {
  @State var hourRemaining: TimeInterval = 8
  @State var minuteRemaining: TimeInterval = 34
  @State var secondRemaining: TimeInterval = 52

  var body: some View {
    ScrollView {
      VStack(spacing: 24) {
        PromotionBanner(
          hourRemaining: $hourRemaining,
          minuteRemaining: $minuteRemaining,
          secondRemaining: $secondRemaining,
          type: .sale(50)
        )

        CategoryView()

        Spacer()
      }
    }
  }
}

struct HomeView_Previews: PreviewProvider {
  static var previews: some View {
    HomeView()
  }
}
