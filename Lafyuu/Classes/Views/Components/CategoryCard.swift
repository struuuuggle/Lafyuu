//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/05.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import Rswift
import SwiftUI

struct CategoryCard: View {
  let category: Category
  let width: CGFloat
  let height: CGFloat

  init(_ category: Category, width: CGFloat = 70, height: CGFloat = 108) {
    self.category = category
    self.width = width
    self.height = height
  }

  var body: some View {
    VStack {
      ProductIcon(category)
      productCaption
    }
    .frame(width: width, height: height)
  }
}

// MARK: - private properties
extension CategoryCard {
  private var productCaption: some View {
    Text(category.name)
      .kerning(0.5)
      .lineLimit(2)
      .multilineTextAlignment(.center)
      .font(R.font.poppinsRegular, size: 10)
      .foregroundColor(R.color.grey)
      .frame(width: width, height: 30)
  }
}

struct ProductIcon: View {
  let category: Category
  let width: CGFloat
  let height: CGFloat

  init(
    _ category: Category,
    width: CGFloat = Constant.Icon.Size.medium,
    height: CGFloat = Constant.Icon.Size.medium
  ) {
    self.category = category
    self.width = width
    self.height = height
  }

  var body: some View {
    ZStack {
      Circle()
        .stroke(R.color.light()!.color, lineWidth: 1)
        .foregroundColor(R.color.white)
      Image(category.imageName)
        .frame(width: Constant.Icon.Size.small, height: Constant.Icon.Size.small)
    }
  }
}

// MARK: - PreviewProvider
struct ProductCategory_Previews: PreviewProvider {
  static var previews: some View {
    CategoryCard(.dress)
  }
}
