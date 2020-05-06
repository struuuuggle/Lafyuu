//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/05.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import Rswift
import SwiftUI

struct PromotionBanner: View {
  let type: PromotionType
  let expiryDate: Date?

  init(type: PromotionType, expiryDate: Date? = nil) {
    self.type = type
    self.expiryDate = expiryDate
  }

  var body: some View {
    ZStack(alignment: .topLeading) {
      Image(type.image)
        .resizable()
        .roundCorner()
        .frame(height: 206)
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
        .padding(.top, type == .recommend ? 12 : 0)

      // To be clean around here
      if type == .recommend {
        recommendItem
      } else {
        saleItem
      }
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

  var recommendItem: some View {
    Text(type.recommeingFollowingText)
      .kerning(0.5)
      .fontWeight(.light)
      .font(R.font.poppinsRegular, size: 12)
      .foregroundColor(R.color.white)
  }

  var saleItem: some View {
    FlipClock(expiryDate: expiryDate)
  }
}

struct Banner_Previews: PreviewProvider {
  static let expiryDate = Date()
  static var previews: some View {
    PromotionBanner(type: .recommend, expiryDate: expiryDate)
      .previewLayout(.fixed(width: 375, height: 222))
  }
}
