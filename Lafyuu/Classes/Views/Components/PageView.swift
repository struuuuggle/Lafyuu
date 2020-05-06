//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/05.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import SwiftUI

struct PageView<Page: View>: View {
  @State var currentPage = 0
  let viewControllers: [UIHostingController<Page>]

  init(_ views: [Page]) {
    self.viewControllers = views.map { UIHostingController(rootView: $0) }
  }

  var body: some View {
    VStack(spacing: 16) {
      PageViewController(
        controllers: viewControllers,
        currentPage: $currentPage
      )
      PageControl(
        numberOfPages: viewControllers.count,
        currentPage: $currentPage
      )
    }
  }
}

struct PageView_Previews: PreviewProvider {
  static var previews: some View {
    PageView(
      Array(
        repeating: PromotionBanner(
          type: .sale(50),
          expiryDate: Date()
        ),
        count: 5
      )
    )
      .aspectRatio(3 / 2, contentMode: .fit)
  }
}
