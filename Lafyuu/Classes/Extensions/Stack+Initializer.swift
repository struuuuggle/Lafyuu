//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/22.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import SwiftUI

extension HStack {

  /// Convenience Initilizer
  ///
  ///     HStack(alignment: .top, spacing: .tightHorizontal) {
  ///         ...
  ///     }
  /// - Parameters:
  ///   - alignment: The guide for aligning the subviews in this stack. It has the same vertical screen coordinate for all children.
  ///   - spacing: The distance between adjacent subviews, or nil if you want the stack to choose a default distance for each pair of subviews.
  ///   - content: A view builder that creates the content of this stack.
  @inlinable init(alignment: VerticalAlignment = .center, spacing: Constant.Spacing, @ViewBuilder content: () -> Content) {
    self.init(alignment: alignment, spacing: spacing.rawValue, content: content)
  }

  /// Convenience Initilizer
  ///
  ///     HStack(spacing: .tightHorizontal) {
  ///         ...
  ///     }
  /// - Parameters:
  ///   - spacing: The distance between adjacent subviews, or nil if you want the stack to choose a default distance for each pair of subviews.
  ///   - content: A view builder that creates the content of this stack.
  @inlinable init(spacing: Constant.Spacing, @ViewBuilder content: () -> Content) {
    self.init(alignment: .center, spacing: spacing.rawValue, content: content)
  }
}

extension VStack {

  /// Convenience Initilizer
  ///
  ///     VStack(alignment: .leading, spacing: .vertical) {
  ///         ...
  ///     }
  /// - Parameters:
  ///   - alignment: The guide for aligning the subviews in this stack. It has the same vertical screen coordinate for all children.
  ///   - spacing: The distance between adjacent subviews, or nil if you want the stack to choose a default distance for each pair of subviews.
  ///   - content: A view builder that creates the content of this stack.
  @inlinable init(alignment: HorizontalAlignment = .center, spacing: Constant.Spacing, @ViewBuilder content: () -> Content) {
    self.init(alignment: alignment, spacing: spacing.rawValue, content: content)
  }

  /// Convenience Initilizer
  ///
  ///     VStack(spacing: .vertical) {
  ///         ...
  ///     }
  /// - Parameters:
  ///   - spacing: The distance between adjacent subviews, or nil if you want the stack to choose a default distance for each pair of subviews.
  ///   - content: A view builder that creates the content of this stack.
  @inlinable init(spacing: Constant.Spacing, @ViewBuilder content: () -> Content) {
    self.init(alignment: .center, spacing: spacing.rawValue, content: content)
  }
}
