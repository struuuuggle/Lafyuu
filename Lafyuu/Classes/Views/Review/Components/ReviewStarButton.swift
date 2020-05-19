//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/09.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import SwiftUI

struct ReviewStarButton: View {
  let rate: ProductReviewRate
  let action: () -> Void
  let width: CGFloat
  let height: CGFloat

  init(rate: ProductReviewRate, action: @escaping () -> Void, width: CGFloat = 62, height: CGFloat = 50) {
    self.rate = rate
    self.action = action
    self.width = width
    self.height = height
  }

  var body: some View {
    Button(
      action: action,
      label: {
        buttonLabel(rate: rate)
          .padding(.vertical, 16)
    })
      .frame(width: width, height: height)
      .roundCorner(with: R.color.light)
  }

  private func buttonLabel(rate: ProductReviewRate) -> some View {
    HStack(spacing: Constant.Spacing.inline.rawValue) {
      Image(R.image.star_filled)
        .resizable()
        .frame(
          width: Constant.StarRatingSize.medium.starSize,
          height: Constant.StarRatingSize.medium.starSize
      )
      Text(rate.reviewFilterButtonText)
        .font(R.font.poppinsRegular, size: 12)
        .foregroundColor(R.color.grey)
    }
  }
}

// MARK: - PreviewProvider
struct ReviewStarButton_Previews: PreviewProvider {
  static var previews: some View {
    Group {
      ForEach(ProductReviewRate.allCases, id: \.self) { rate in
        ReviewStarButton(rate: rate, action: {})
          .previewLayout(.fixed(width: 80, height: 60))
          .previewDisplayName(rate.reviewFilterButtonText)
      }
    }
  }
}
