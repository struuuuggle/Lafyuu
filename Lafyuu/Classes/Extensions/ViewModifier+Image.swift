//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/22.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import Rswift
import SwiftUI

enum LafyuuImageStyle {
  case notificationCategoryAlert
  case notificationIcon
  case notificationFeedThumbnail

  var color: ColorResource {
    switch self {
    case .notificationCategoryAlert:
      return R.color.red
    case .notificationIcon:
      return R.color.blue
    case .notificationFeedThumbnail:
      return R.color.blue
    }
  }

  var frame: CGFloat {
    switch self {
    case .notificationCategoryAlert:
      return 24
    case .notificationIcon:
      return 24
    case .notificationFeedThumbnail:
      return 48
    }
  }

  var render: Image.TemplateRenderingMode {
    switch self {
    case .notificationCategoryAlert:
      return .original
    case .notificationIcon:
      return .template
    case .notificationFeedThumbnail:
      return .original
    }
  }
}

extension Image: ViewModifier {
  /// Define Lafyuu style of `Text`
  /// - Parameter style: style of `Text`
  /// - Returns: View
  ///
  /// You can use this method like this:
  ///
  ///     Image(R.image.kick_1)
  ///       .imageStyle(.notificationFeedThumbnail)
  ///
  func imageStyle(_ style: LafyuuImageStyle) -> some View {
    self
      .resizable()
      .renderingMode(style.render)
      .modifier(LafyuuImageModifier(style))
  }

  struct LafyuuImageModifier: ViewModifier {
    let style: LafyuuImageStyle

    init(_ style: LafyuuImageStyle) {
      self.style = style
    }

    func body(content: Content) -> some View {
      content
        .foregroundColor(style.color)
        .frame(width: style.frame, height: style.frame)
    }
  }
}
