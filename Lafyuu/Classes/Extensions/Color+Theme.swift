//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/03.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import Rswift
import SwiftUI
import UIKit

extension Color {
  init(_ resource: ColorResource) {
    self.init(resource.name)
  }
}

extension UIColor {

  /// Converts UIColor to Color
  ///
  /// An Example
  /// - `R.color.blue()!.color`
  /// - `R.color.green()!.color`
  var color: Color {
    Color(self)
  }
}

enum LafyuuColor: String, CaseIterable {
  case yellow
  case red
  case purple
  case green
  case blue
  case dark
  case grey
  case light
}
