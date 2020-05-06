//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/05.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import SwiftUI

typealias ProductCardSize = Constant.ProductCardSize

struct ProductCard: View {
  let product: Product
  let size: ProductCardSize

  var body: some View {
    NavigationLink(
      destination: ProductDetailView(product: product),
      label: { buttonLabel }
    )
      .frame(width: size.width, height: size.height)
      .roundCorner(with: R.color.light)
  }
}

// MARK: - Private properties
extension ProductCard {
  var buttonLabel: some View {
    VStack {
      thumbnailImage
      ProductCardCaption(product: product, size: size)
    }
  }

  var thumbnailImage: some View {
    Image(product.imageUrl)
      .renderingMode(.original)
      .resizable()
      .roundCorner()
      .frame(width: size.imageSize, height: size.imageSize)
  }
}

struct ProductCard_Previews: PreviewProvider {
  static var previews: some View {
    Group {
      ProductCard(
        product: Mock.products.first!,
        size: .normal
      )
        .previewDisplayName("Normal")
        .previewLayout(.fixed(width: 150, height: 250))

      ProductCard(
        product: Mock.products.first!,
        size: .large
      )
        .previewDisplayName("Large")
        .previewLayout(.fixed(width: 180, height: 300))
    }
  }
}
