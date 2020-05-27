//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/03.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import SwiftUI

struct OfferView: View {
  var body: some View {
    NavigationView {
      VStack(spacing: 16) {

        couponPromotion(code: Mock.Coupon.code, discount: Mock.Coupon.discount)

        Group {
          PromotionBanner(
            type: .sale(30),
            expiryDate: Date()
          )
          // FIXME: overlayItemTitle
          // PromotionType.recommend with associate value
          PromotionBanner(type: .recommend)
        }

        Spacer()
      }
      .padding(.vertical, 16)
      .navigationBarTitle(
        Text("Offer")
          .foregroundColor(R.color.dark)
      )
    }
  }
}

// MARK: - Private properties
extension OfferView {
  private func couponPromotion(code: String, discount: Int) -> some View {
    ZStack(alignment: .leading) {
      Rectangle()
        .foregroundColor(R.color.blue)
      Text("Use \"\(code)\" Coupon For\nGet \(discount)% off")
        .kerning(Constant.Text.kerning)
        .font(R.font.poppinsBold, size: 16)
        .lineSpacing(0.5)
        .foregroundColor(R.color.white)
        .padding(.leading, 16)
    }
    .roundCorner()
    .frame(height: 80)
    .padding(.horizontal, 16)
  }
}

struct OfferView_Previews: PreviewProvider {
  static var previews: some View {
    OfferView()
  }
}
