//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/07.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import SwiftUI

struct ProductDetailReviewerSection: View {
  let reviews: [Review]
  let displayedReview: Review?

  init(reviews: [Review]) {
    self.reviews = reviews
    self.displayedReview = reviews.first
  }

  var body: some View {
    VStack(alignment: .leading, spacing: 16) {
      reviewerInfo
      reviewComment
    }
  }
}

// MARK: - Private properties
extension ProductDetailReviewerSection {
  private var reviewerInfo: some View {
    HStack(spacing: 16) {
      Image(R.image.james)
      VStack(alignment: .leading, spacing: 4) {
        Text(displayedReview?.reviewerName ?? "Anonymous")
          .textStyle(.heading)
        StarRating(rate: displayedReview?.rate, size: .medium)
      }
    }
  }

  private var reviewComment: some View {
    Text(displayedReview?.comment ?? "NO COMMENT")
      .kerning(0.5)
      .lineLimit(10)
      .lineSpacing(5)
      .font(R.font.poppinsRegular, size: 12)
      .foregroundColor(R.color.grey)
  }
}

struct ProductDetailReviewerSection_Previews: PreviewProvider {
  static var previews: some View {
    ProductDetailReviewerSection(
      reviews: Mock.products.randomElement()!.reviews
    )
      .padding(16)
  }
}
