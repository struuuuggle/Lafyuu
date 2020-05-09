//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/09.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import SwiftUI

extension Constant {

  enum StarRatingSize {
    case small
    case medium
    case big

    var frameWidth: CGFloat {
      switch self {
      case .small:
        return 68
      case .medium:
        return 96
      case .big:
        return 224
      }
    }

    var frameHeight: CGFloat {
      switch self {
      case .small:
        return 12
      case .medium:
        return 16
      case .big:
        return 32
      }
    }

    var starSize: CGFloat {
      switch self {
      case .small:
        return 12
      case .medium:
        return 16
      case .big:
        return 32
      }
    }

    var starSpacing: CGFloat {
      switch self {
      case .small:
        return 2
      case .medium:
        return 4
      case .big:
        return 16
      }
    }
  }
}
