//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/09.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import SwiftUI

extension Constant {
  enum Image {
    case reviewerProduct

    var size: CGFloat {
      switch self {
      case .reviewerProduct:
        return 72
      }
    }
  }
}
