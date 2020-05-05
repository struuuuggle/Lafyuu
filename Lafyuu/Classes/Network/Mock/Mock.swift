//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/05.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import Foundation
import Rswift

enum Mock {
  static let products: [Product] = Array(
    repeating: .init(
      name: "FS - Nike Air Max 270 React ENG",
      imageUrl: ProductImage.allCases.randomElement()!.image,
      currentPrice: 29943,
      regularPrice: 53433,
      discountRate: 24
    ),
    count: 10)

  enum ProductImage: CaseIterable {
    case bag1
    case bag2
    case bag3
    case bag4
    case kick1
    case kick2
    case kick3
    case kick4

    var image: ImageResource {
      switch self {
      case .bag1:
        return R.image.bag_1
      case .bag2:
        return R.image.bag_2
      case .bag3:
        return R.image.bag_3
      case .bag4:
        return R.image.bag_4
      case .kick1:
        return R.image.kick_1
      case .kick2:
        return R.image.kick_2
      case .kick3:
        return R.image.kick_3
      case .kick4:
        return R.image.kick_4
      }
    }
  }
}
