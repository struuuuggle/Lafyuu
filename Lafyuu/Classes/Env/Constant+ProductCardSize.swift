//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/09.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import SwiftUI

extension Constant {
  enum ProductCardSize: Equatable {
    case normal
    case large

    static func == (lhs: Self, rhs: Self) -> Bool {
      lhs.width == rhs.width
    }

    var width: CGFloat {
      switch self {
      case .normal:
        return 141
      case .large:
        return 165
      }
    }
    var height: CGFloat {
      switch self {
      case .normal:
        return 238
      case .large:
        return 282
      }
    }

    var imageSize: CGFloat {
      switch self {
      case .normal:
        return 109
      case .large:
        return 133
      }
    }
  }
}
