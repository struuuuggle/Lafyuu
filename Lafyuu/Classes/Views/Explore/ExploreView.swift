//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/03.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import SwiftUI

struct ExploreView: View {
  var body: some View {
    VStack(spacing: 24) {
      manFashionSection
      womanFashionSection
      Spacer()
    }
    .padding(16)
  }
}

// MARK: - Private properties
extension ExploreView {
  private var manFashionSection: some View {
    VStack(alignment: .leading) {
      SectionHeader<EmptyView>(leadingText: "Man Fashion")
      HStack(spacing: 32) {
        CategoryCard(.shirt)
        CategoryCard(.manBag)
        CategoryCard(.tshirt)
        CategoryCard(.manShoes)
      }
      HStack(spacing: 32) {
        CategoryCard(.manPants)
        CategoryCard(.manUnderwear)
      }
    }
  }

  private var womanFashionSection: some View {
    VStack(alignment: .leading) {
      SectionHeader<EmptyView>(leadingText: "Woman Fashion")
      HStack(spacing: 32) {
        CategoryCard(.dress)
        CategoryCard(.womanTshirt)
        CategoryCard(.womanpants)
        CategoryCard(.skirt)
      }
      HStack(spacing: 32) {
        CategoryCard(.womanBag)
        CategoryCard(.womanShoes)
        CategoryCard(.bikini)
      }
    }
  }
}

struct ExploreView_Previews: PreviewProvider {
  static var previews: some View {
    ExploreView()
  }
}
