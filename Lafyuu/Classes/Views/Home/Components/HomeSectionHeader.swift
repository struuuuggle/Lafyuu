//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/05.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import SwiftUI

struct HomeSectionHeader<U, T>: View where U: View, T: View {
  let leadingItem: U
  let trailingItem: T

  init(leadingItem: () -> U, trailingItem: () -> T) {
    self.leadingItem = leadingItem()
    self.trailingItem = trailingItem()
  }

  var body: some View {
    HStack {
      leadingItem
      Spacer()
      trailingItem
    }
    .padding(.horizontal, 16)
  }
}

struct HomeSectionHeader_Previews: PreviewProvider {
  static var previews: some View {
    HomeSectionHeader(
      leadingItem: ({
        Text("Category")
          .textStyle(.heading)
      }),
      trailingItem: {
        Button(
          action: {},
          label: {
            Text("More Category")
              .textStyle(.seeMore)
        })
    })
      .previewLayout(.fixed(width: 375, height: 100))
  }
}
