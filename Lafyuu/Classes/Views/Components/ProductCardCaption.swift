//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/06.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import SwiftUI

typealias StarRatingSize = Constant.StarRatingSize

struct ProductCardCaption: View {
  let product: Product
  let size: ProductCardSize

  var body: some View {
    VStack(alignment: .leading, spacing: 8) {
      VStack(alignment: .leading, spacing: 4) {
        title
        if size == .large {
          StarRating(rate: product.rate, size: .small)
        }
      }

      HStack {
        priceContainer
        Spacer()
        // TODO: FavoriteProductView only [2020/05/06]
        if size == .large {
          trashButton
        }
      }
    }
    .padding(.horizontal, 16)
  }

  private var priceContainer: some View {
    VStack(alignment: .leading, spacing: 4) {
      currentPrice
      HStack(alignment: .bottom) {
        regularPrice; discountRate
      }
    }
  }
}

// MARK: - Private properties
extension ProductCardCaption {

  private var title: some View {
    Text(product.name)
      .textStyle(.productCardTitle)
      .multilineTextAlignment(.leading)
      .lineLimit(2)
      .lineSpacing(0.5)
  }

  private var currentPrice: some View {
    Text("$\(product.currentPrice)")
      .textStyle(.productCardPrice)
      .lineSpacing(0.5)
  }

  private var regularPrice: some View {
    Text("$\(product.regularPrice)")
      .strikethrough()
      .textStyle(.productRegularPrice)
  }

  private var discountRate: some View {
    Text("\(product.discountRate)% Off")
      .textStyle(.productDiscountRate)
  }

  private var trashButton: some View {
    Button(
      action: {
    },
      label: {
        Image(R.image.trash)
    })
      .foregroundColor(R.color.grey)
  }
}

struct ProductCardCaption_Previews: PreviewProvider {
  static var previews: some View {
    Group {
      ProductCardCaption(
        product: Mock.products.randomElement()!,
        size: .normal
      )
        .previewDisplayName("Normal")
        .previewLayout(.fixed(width: 150, height: 120))

      ProductCardCaption(
        product: Mock.products.randomElement()!,
        size: .large
      )
        .previewDisplayName("Large")
        .previewLayout(.fixed(width: 180, height: 150))
    }
  }
}
