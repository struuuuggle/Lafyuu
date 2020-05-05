//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/05.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import Rswift
import SwiftUI

struct PromotionBanner: View {
  @Binding var hourRemaining: TimeInterval
  @Binding var minuteRemaining: TimeInterval
  @Binding var secondRemaining: TimeInterval
  let type: PromotionType

  var body: some View {
    ZStack(alignment: .topLeading) {
      Image(type.image)
        .roundCorner()
      overlayItems
    }
    .padding(.horizontal, 16)
  }
}

// MARK: - private properties
extension PromotionBanner {
  var overlayItems: some View {
    VStack(alignment: .leading, spacing: 28) {
      bannerTitle
      FlipClock(
        hourRemaining: $hourRemaining,
        minuteRemaining: $minuteRemaining,
        secondRemaining: $secondRemaining
      )
    }
    .padding(.top, 36)
    .padding(.leading, 24)
  }

  var bannerTitle: some View {
    Text(type.bannerTitle)
      .kerning(0.5)
      .font(R.font.poppinsBold, size: 24)
      .foregroundColor(R.color.white)
  }
}

struct Banner_Previews: PreviewProvider {
  static var previews: some View {
    PromotionBanner(
      hourRemaining: .constant(8),
      minuteRemaining: .constant(10),
      secondRemaining: .constant(5),
      type: .sale(50)
    )
      .previewLayout(.fixed(width: 375, height: 222))
  }
}
