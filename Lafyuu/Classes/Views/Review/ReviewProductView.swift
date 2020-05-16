//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/16.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import SwiftUI

struct ReviewProductView: View {
  let reviews: [Review]

  var body: some View {
    VStack {
      ScrollView(.horizontal, showsIndicators: false) {
        ReviewFilter()
      }
      .padding(.horizontal, 16)
      ScrollView(.vertical, showsIndicators: false) {
        VStack(spacing: 24) {
          ForEach(reviews, id: \.id) { review in
            ReviewerSection(review: review)
          }
          LargeButton(label: "Write Review") {
            // TODO: Go to white review view [2020/05/16]
          }
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
