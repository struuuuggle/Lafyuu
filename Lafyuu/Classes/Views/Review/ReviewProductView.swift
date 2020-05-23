//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/16.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import SwiftUI

struct ReviewProductView: View {
  let reviews: [Review]

  var body: some View {
    VStack {
      ScrollView(.vertical, showsIndicators: false) {
        ScrollView(.horizontal, showsIndicators: false) {
          ReviewFilter()
        }
        VStack(spacing: .wideVertical) {
          ForEach(reviews, id: \.id) { review in
            ReviewerSection(review: review)
          }
          NavigationLink(
            destination: WriteReviewView(),
            label: {
              // TODO: Adapt LargeButton for NavigationLink [2020/05/19]
              LargeButton(label: "Write Review") {}
          })
        }
      }
      .padding(.horizontal, 16)
    }
  }
}

struct ReviewProductView_Previews: PreviewProvider {
  static var previews: some View {
    ReviewProductView(reviews: Mock.Review.reviews)
      .previewLayout(.fixed(width: 375, height: 1100))
  }
}
