//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/19.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import SwiftUI

extension Constant {
  public enum Spacing: CGFloat {
    case horizontal = 16
    case tightHorizontal = 12

    case wideVertical = 24
    //    case vertical = 16
    case tightVertical = 8

    case inline = 10
  }

  static let lafyuuPadding: CGFloat = 16
}

extension View {
  /// Add the Lafyuu padding value which behaves the same way as `.padding(16)`
  func lafyuuPadding() -> some View {
    self.padding(Constant.lafyuuPadding)
  }
}
