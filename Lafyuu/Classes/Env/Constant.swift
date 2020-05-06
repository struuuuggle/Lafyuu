//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/03.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import SwiftUI

enum Constant {
  enum View {
    static let radius: CGFloat = 5
  }

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

  enum Icon {
    enum Size {
      static let small: CGFloat = 24
      static let medium: CGFloat = 70
    }
  }
}
