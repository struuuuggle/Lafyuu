//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/07.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import Rswift
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
      reviewImages
      reviewDate
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

  private var reviewImages: some View {
    HStack {
      ForEach(displayedReview?.productImages ?? [ImageResource](), id: \.name) { resource in
        Image(resource)
          .resizable()
          .roundCorner()
          .frame(
            width: Constant.Image.reviewerProduct.size,
            height: Constant.Image.reviewerProduct.size
        )
      }
    }
  }

  private var reviewDate: some View {
    Text(displayedReview?.date.yMMMd(local: .us) ?? "NO DATE")
      .kerning(0.5)
      .font(R.font.poppinsRegular, size: 10)
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
