//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/05.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import Rswift

enum PromotionType {
  case sale(Int)
  case recommend
}

// MARK: - For Promotion Banner
extension PromotionType {
  var image: ImageResource {
    switch self {
    case .sale:
      return R.image.pr_jordan
    case .recommend:
      return R.image.pr_canvas
    }
  }

  var bannerTitle: String {
    switch self {
    case .sale(let discountRate):
      return "Super Flash Sale\n\(discountRate)% Off"
    case .recommend:
      return "Recommended Product\n We recommend the best for you"
    }
  }
}
