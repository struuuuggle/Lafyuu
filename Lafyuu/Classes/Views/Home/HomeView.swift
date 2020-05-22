//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/03.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import SwiftUI

struct HomeView: View {
  @State var hourRemaining: TimeInterval = 8
  @State var minuteRemaining: TimeInterval = 34
  @State var secondRemaining: TimeInterval = 52
  let expiryDate = Date()

  init() {
    UINavigationBar.appearance().tintColor = R.color.grey()
  }

  var body: some View {
    NavigationView {
      ScrollView {
        VStack(spacing: .vertical) {
          Spacer()
          PageView(Mock.PromotionPager.pages)
            .frame(height: 230)

          CategorySection()

          SaleSectionView(saleType: .flashSale, expiryDate: expiryDate)
          SaleSectionView(saleType: .megaSale, expiryDate: expiryDate)

          PromotionBanner(
            type: .recommend,
            expiryDate: expiryDate
          )

          homeProductContainer
        }
      }
      .navigationBarTitle(
        Text("Home")
          .foregroundColor(R.color.dark)
      )
        .navigationBarItems(
          trailing: HStack {
            NavigationLink(
              destination: EmptyView(),
              label: { Image(R.image.love) }
            )
            NavigationLink(
              destination: NotificationCategoryView(
                offers: Mock.NotificationOffer.offers,
                feeds: Mock.NotificationFeed.feeds,
                activities: Mock.NotificationActivity.activities
              ),
              label: { Image(R.image.notification) }
            )
        })
    }
  }
}

// MARK: - Private properties
extension HomeView {
  private var homeProductContainer: some View {
    VStack {
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

struct HomeView_Previews: PreviewProvider {
  static var previews: some View {
    HomeView()
  }
}
