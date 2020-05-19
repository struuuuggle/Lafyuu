//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/05.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import SwiftUI

struct CategorySection: View {
  var body: some View {
    VStack(alignment: .leading, spacing: 12) {
      SectionHeader(leadingText: "Category", trailingText: "More Category") {
        CategoryView()
      }
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

struct SectionHeader<Content>: View where Content: View {
  let leadingText: String
  var trailingText: String?
  var destinationView: (() -> Content)

  init(leadingText: String, trailingText: String? = nil, destination: (() -> EmptyView)? = nil) {
    self.leadingText = leadingText
    self.trailingText = trailingText
    self.destinationView = { EmptyView() as! Content }
  }

  @inlinable init(leadingText: String, trailingText: String? = nil, @ViewBuilder destination: @escaping (() -> Content)) {
    self.leadingText = leadingText
    self.trailingText = trailingText
    self.destinationView = destination
  }

  var body: some View {
    HStack {
      Text(leadingText)
        .textStyle(.heading)
      Spacer()

      if trailingText != nil {
        NavigationLink(
          destination: destinationView(),
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
