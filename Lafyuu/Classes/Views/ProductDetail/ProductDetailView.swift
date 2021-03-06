//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/07.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import SwiftUI

struct ProductDetailView: View {
  let product: Product

  var body: some View {
    ScrollView {
      VStack(spacing: Constant.Spacing.wideVertical.rawValue) {
        PageView(Mock.ProductDetailPager.pages)
          .frame(height: 262)

        ProductDetailProductSummaryContainer(product: product)

        ProductDetailSizeSelectionSection()

        ProductDetailColorSelectionSection()

        ProductDetailSpecificationSection(specification: product.specification)

        reviewProductSection

        ReviewerSection(review: product.reviews.first)

        recommendSection

        LargeButton(label: "Add To Card") {}
      }
      .padding(Constant.lafyuuPadding)
    }
  }
}

// MARK: - Private properties
extension ProductDetailView {

  private var reviewProductSection: some View {
    VStack(alignment: .leading) {
      SectionHeader(leadingText: "ReviewProduct", trailingText: "See More") {
        ReviewProductView(reviews: self.product.reviews)
      }

      HStack {
        StarRating(rate: .constant(product.rate), size: .medium)
        Text("\(product.rate ?? 0)")
          .kerning(Constant.Text.kerning)
          .font(R.font.poppinsBold, size: 10)
          .foregroundColor(R.color.grey)
        Text("(\(product.reviewerCount ?? 0) Review)")
          .kerning(Constant.Text.kerning)
          .font(R.font.poppinsRegular, size: 10)
          .foregroundColor(R.color.grey)
      }
    }
  }

  private var recommendSection: some View {
    ScrollView(.horizontal, showsIndicators: false) {
      VStack(alignment: .leading) {
        SectionHeader<EmptyView>(leadingText: "You Might Also Like")

        HStack(spacing: Constant.Spacing.horizontal.rawValue) {
          ForEach(Mock.products.shuffled(), id: \.id) { product in
            ProductCard(product: product, size: .normal)
          }
        }
      }
    }
  }
}

// MARK: - PreviewProvider
struct ProductDetailView_Previews: PreviewProvider {
  static var previews: some View {
    ProductDetailView(product: Mock.products.randomElement()!)
      .previewLayout(.fixed(width: 375, height: 1805))
  }
}
