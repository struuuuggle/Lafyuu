//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/06.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import SwiftUI

struct SaleSectionView: View {
  let saleType: SaleType
  let products = Mock.products.shuffled()
  let expiryDate: Date?

  var body: some View {
    VStack {
      HomeSectionHeader(
        leadingItem: ({
          Text(saleType.name)
            .textStyle(.heading)
        }),
        trailingItem: {
          NavigationLink(
            destination: SaleView(saleType: saleType, expiryDate: expiryDate),
            label: {
              Text("See More")
                .textStyle(.seeMore)
          })
      })

      saleSectionContainer
    }
  }
}

// MARK: - Private properties
extension SaleSectionView {
  private var saleSectionContainer: some View {
    ScrollView(.horizontal, showsIndicators: false) {
      HStack(spacing: 12) {
        ForEach(products, id: \.id) { product in
          ProductCard(product: product, size: .normal)
        }
      }
      .padding(.horizontal, 16)
    }
  }
}

struct SaleSectionView_Previews: PreviewProvider {
  static let expiryDate = Date()
  static var previews: some View {
    SaleSectionView(saleType: .flashSale, expiryDate: expiryDate)
  }
}
