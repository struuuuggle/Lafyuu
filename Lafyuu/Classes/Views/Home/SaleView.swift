//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/06.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import SwiftUI

struct SaleView: View {
  let saleType: SaleType
  let expiryDate: Date?

  init(saleType: SaleType, expiryDate: Date?) {
    self.saleType = saleType
    self.expiryDate = expiryDate

    UINavigationBar.appearance().titleTextAttributes = [
      .font: R.font.poppinsBold(size: 16)!,
      .foregroundColor: R.color.dark()!,
      .kern: 0.5
    ]
  }

  var body: some View {
    ScrollView {
      VStack(spacing: 12) {
        PromotionBanner(
          type: .sale(50),
          expiryDate: expiryDate
        )
        cotainer
      }
      .padding(.vertical, 16)
    }
    .navigationBarTitle("Super Flash Sale", displayMode: .inline)
    .navigationBarItems(trailing: Image(R.image.search))
  }
}

// MARK: - Private properties
extension SaleView {
  private var cotainer: some View {
    Group {
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

  private var leadingNavBarItem: some View {
    HStack {
      Image(R.image.left)
      Text("Super Flash Sale")
        .font(R.font.poppinsBold, size: 16)
        .foregroundColor(R.color.dark)
    }
  }
}

struct SaleView_Previews: PreviewProvider {
  static let expiryDate = Date()
  static var previews: some View {
    SaleView(saleType: .flashSale, expiryDate: expiryDate)
  }
}
