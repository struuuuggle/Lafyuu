//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/05.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import Rswift
import SwiftUI

typealias Product = ImageResource

struct ProductCategory: View {
  let type: Product
  let width: CGFloat
  let height: CGFloat

  init(type: Product, width: CGFloat = 70, height: CGFloat = 108) {
    self.type = type
    self.width = width
    self.height = height
  }

  var body: some View {
    VStack {
      ProductIcon(type: type)
      productCaption
    }
    .frame(width: width, height: height)
  }
}

// MARK: - private properties
extension ProductCategory {
  private var productCaption: some View {
    Text(type.name)
      .kerning(0.5)
      .lineLimit(2)
      .multilineTextAlignment(.center)
      .font(R.font.poppinsRegular, size: 10)
      .foregroundColor(R.color.grey)
      .frame(width: width, height: 30)
  }
}

struct ProductIcon: View {
  let type: Product
  let width: CGFloat
  let height: CGFloat

  init(
    type: ImageResource,
    width: CGFloat = Constant.Icon.Size.medium,
    height: CGFloat = Constant.Icon.Size.medium
  ) {
    self.type = type
    self.width = width
    self.height = height
  }

  var body: some View {
    ZStack {
      Circle()
        .stroke(R.color.light()!.color, lineWidth: 1)
        .foregroundColor(R.color.white)
      Image(type)
        .frame(width: Constant.Icon.Size.small, height: Constant.Icon.Size.small)
    }
  }
}

// MARK: - PreviewProvider
#if DEBUG
struct ProductCategory_Previews: PreviewProvider {
  static var previews: some View {
    ProductCategory(type: R.image.prd_shirt)
  }
}
#endif
