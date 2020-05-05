//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/03.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import SwiftUI

enum Constant {
  enum View {
    static let radius: CGFloat = 5
  }

  enum ProductCard {
    enum Size {
      case normal
      case large

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

  enum Icon {
    enum Size {
      static let small: CGFloat = 24
      static let medium: CGFloat = 70
    }
  }
}
