//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/06.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import SwiftUI

struct SaleView: View {
  let saleType: SaleType
  let expiryDate: Date?

  var body: some View {
    ScrollView(showsIndicators: false) {
      VStack(spacing: 12) {

        PromotionBanner(
          type: .sale(50),
          expiryDate: expiryDate
        )

        HStack {
          ProductCard(
            product: Mock.products.randomElement()!,
            size: .large
          )
          ProductCard(
            product: Mock.products.randomElement()!,
            size: .large
          )
        }
        HStack {
          ProductCard(
            product: Mock.products.randomElement()!,
            size: .large
          )
          ProductCard(
            product: Mock.products.randomElement()!,
            size: .large
          )
        }
      }
    }
  }
}

struct SaleView_Previews: PreviewProvider {
  static let expiryDate = Date()
  static var previews: some View {
    SaleView(saleType: .flashSale, expiryDate: expiryDate)
  }
}
