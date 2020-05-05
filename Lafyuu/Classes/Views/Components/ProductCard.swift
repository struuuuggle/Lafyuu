//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/05.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import SwiftUI

typealias ProductCardSize = Constant.ProductCard.Size

struct ProductCard: View {
  let product: Product
  let size: ProductCardSize

  var body: some View {
    VStack {
      thumbnailImage
      caption
    }
    .frame(width: size.width, height: size.height)
    .roundCorner(with: R.color.light)
  }
}

// MARK: - Private properties
extension ProductCard {
  var thumbnailImage: some View {
    Image(R.image.kick_1)
      .resizable()
      .roundCorner()
      .frame(width: size.imageSize, height: size.imageSize)
  }

  var caption: some View {
    VStack(alignment: .leading, spacing: 8) {
      title
      currentPrice

      HStack {
        regularPrice; discountRate
      }
    }
    .padding(.horizontal, 16)
  }

  var title: some View {
    Text(product.name)
      .textStyle(.productCardTitle)
      .multilineTextAlignment(.leading)
      .lineLimit(2)
      .lineSpacing(0.5)
  }

  var currentPrice: some View {
    Text("$\(product.currentPrice)")
      .textStyle(.productCardPrice)
      .lineSpacing(0.5)
  }

  var regularPrice: some View {
    Text("$\(product.regularPrice)")
      .strikethrough()
      .textStyle(.productRegularPrice)
  }

  var discountRate: some View {
    Text("\(product.discountRate)% Off")
      .textStyle(.productDiscountRate)
  }
}

struct ProductCard_Previews: PreviewProvider {
  static var previews: some View {
    ProductCard(
      product: Mock.products.first!,
      size: .large
    )
      .previewLayout(.fixed(width: 180, height: 300))
  }
}
