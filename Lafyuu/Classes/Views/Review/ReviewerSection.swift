//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/07.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import Rswift
import SwiftUI

struct ReviewerSection: View {
  let review: Review?

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
extension ReviewerSection {
  private var reviewerInfo: some View {
    HStack(spacing: 16) {
      // TODO: Set profile image as placeholer [2020/05/16]
      Image(review?.profileImage ?? R.image.james)
      VStack(alignment: .leading, spacing: 4) {
        Text(review?.reviewerName ?? "Anonymous")
          .textStyle(.heading)
        StarRating(rate: .constant(review?.rate), size: .medium)
      }
      Spacer()
    }
  }

  private var reviewComment: some View {
    Text(review?.comment ?? "NO COMMENT")
      .kerning(0.5)
      .lineLimit(10)
      .lineSpacing(5)
      .font(R.font.poppinsRegular, size: 12)
      .foregroundColor(R.color.grey)
  }

  private var reviewImages: some View {
    HStack {
      ForEach(review?.productImages ?? [ImageResource](), id: \.name) { resource in
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
    HStack {
      Text(review?.date.yMMMd(local: .us) ?? "NO DATE")
        .kerning(0.5)
        .font(R.font.poppinsRegular, size: 10)
        .foregroundColor(R.color.grey)
      Spacer()
    }
  }
}

struct ProductDetailReviewerSection_Previews: PreviewProvider {
  static var previews: some View {
    ForEach(Mock.Review.reviews, id: \.id) { review in
      ReviewerSection(review: review)
        .padding(.horizontal, 16)
        .previewLayout(.fixed(width: 375, height: 300))
        .previewDisplayName(review.reviewerName)
    }
  }
}
