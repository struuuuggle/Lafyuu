//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/07.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import SwiftUI

struct ProductDetailProductSummaryContainer: View {
  @State var isLoveOn = false
  let product: Product

  var body: some View {
    VStack(alignment: .leading, spacing: 4) {

      HStack(alignment: .top, spacing: 44) {

        Text(product.name)
          .kerning(Constant.Text.kerning)
          .lineLimit(2)
          .font(R.font.poppinsBold, size: 20)
          .foregroundColor(R.color.dark)

        Image(R.image.love)
          .renderingMode(.template)
          .foregroundColor(isLoveOn ? R.color.red : R.color.grey)
      }

      StarRating(rate: .constant(5), size: .medium)
        .padding(.bottom, 12)

      Text("$\(product.currentPrice)")
        .kerning(Constant.Text.kerning)
        .font(R.font.poppinsBold, size: 20)
        .foregroundColor(R.color.blue)
    }
  }
}

struct ProductDetailProductSummaryContainer_Previews: PreviewProvider {
  static var previews: some View {
    ProductDetailProductSummaryContainer(product: Mock.products.randomElement()!)
      .padding(16)
  }
}
