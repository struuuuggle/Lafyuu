//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/05.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import SwiftUI

struct CategorySection: View {
  var body: some View {
    VStack(alignment: .leading, spacing: 12) {
      SectionHeader(leadingText: "Category", trailingText: "More Category")
        .padding(.horizontal, 16)
      container
    }
  }
}

// MARK: - Private properties
extension CategorySection {
  var container: some View {
    ScrollView(.horizontal, showsIndicators: false) {
      HStack(spacing: 12) {
        ForEach(Category.allCases, id: \.self) { category in
          CategoryCard(category)
        }
      }
      .padding(.horizontal, 16)
    }
  }
}

struct SectionHeader: View {
  let leadingText: String
  var trailingText: String?

  init(leadingText: String, trailingText: String? = nil) {
    self.leadingText = leadingText
    self.trailingText = trailingText
  }

  var body: some View {
    HStack {
      Text(leadingText)
        .textStyle(.heading)
      Spacer()

      if trailingText != nil {
        NavigationLink(
          destination: CategoryView(),
          label: {
            Text(trailingText!)
              .textStyle(.seeMore)
        })
      }
    }
  }
}

struct CategorySectionView_Previews: PreviewProvider {
  static var previews: some View {
    CategorySection()
  }
}
