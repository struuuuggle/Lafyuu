//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/06.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import SwiftUI

struct SaleView: View {
  @State var hourRemaining: TimeInterval = 8
  @State var minuteRemaining: TimeInterval = 34
  @State var secondRemaining: TimeInterval = 52
  let saleType: SaleType

  var body: some View {
    ScrollView(showsIndicators: false) {
      VStack(spacing: 12) {

        PromotionBanner(
          hourRemaining: $hourRemaining,
          minuteRemaining: $minuteRemaining,
          secondRemaining: $secondRemaining,
          type: .sale(50)
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
  static var previews: some View {
    SaleView(saleType: .flashSale)
  }
}
