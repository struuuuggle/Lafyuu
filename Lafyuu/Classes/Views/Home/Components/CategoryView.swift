//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/05.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import SwiftUI

struct CategoryView: View {
  var body: some View {
    VStack(alignment: .leading, spacing: 12) {
      header
      container
    }
  }
}

// MARK: - Private properties
extension CategoryView {
  var header: some View {
    HStack {
      Text("Category")
        .textStyle(.heading)
      Spacer()
      Button(
        action: {},
        label: {
          Text("More Category")
            .textStyle(.seeMore)
      })
    }
    .padding(.horizontal, 16)
  }

  var container: some View {
    ScrollView(.horizontal, showsIndicators: false) {
      HStack(spacing: 12) {
        ForEach(Category.allCases, id: \.self) { category in
          ProductCard(category)
        }
      }
      .padding(.horizontal, 16)
    }
  }
}

struct CategoryView_Previews: PreviewProvider {
  static var previews: some View {
    CategoryView()
  }
}