//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/03.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import Rswift
import SwiftUI

extension View {

  func roundCorner(with color: ColorResource, radius: CGFloat = Constant.View.radius, lineWidth: CGFloat = 1) -> some View {
    self
      .cornerRadius(radius)
      .overlay(
        RoundedRectangle(cornerRadius: radius)
          .stroke(Color(color), lineWidth: lineWidth)
    )
  }

  func roundCorner(with color: Color = .clear, radius: CGFloat = Constant.View.radius, lineWidth: CGFloat = 1) -> some View {
    self
      .cornerRadius(radius)
      .overlay(
        RoundedRectangle(cornerRadius: radius)
          .stroke(color, lineWidth: lineWidth)
    )
  }
}
