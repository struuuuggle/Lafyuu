//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/03.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import Rswift
import SwiftUI

enum ButtonType {
  case fill
  case clear
}

extension ButtonType {
  var fgColor: Color {
    switch self {
    case .fill:
      return R.color.white()!.color
    case .clear:
      return R.color.grey()!.color
    }
  }

  var bgColor: Color {
    switch self {
    case .fill:
      return R.color.blue()!.color
    case .clear:
      return Color.clear
    }
  }
}
