//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/23.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import SwiftUI

extension View {

  /// Convenience Initializer
  ///
  ///     List {
  ///         Text("Item 1")
  ///     }
  ///     .padding(.horizontal, .tinyHorizontal)
  ///
  /// - Parameters:
  ///     - edges: The set of edges along which to inset this view.
  ///     - length: The amount to inset this view on each edge. If `nil`,
  ///       the amount is the system default amount.
  /// - Returns: A view that pads this view using edge the insets you specify.
  @inlinable func padding(_ edges: Edge.Set = .all, _ length: Constant.Spacing) -> some View {
    padding(edges, length.rawValue)
  }

  /// Convenience Initializer
  ///
  /// - Parameter length: The amount to inset this view on each edge.
  /// - Returns: A view that pads this view by the amount you specify.
  @inlinable func padding(_ length: Constant.Spacing) -> some View {
    padding(length.rawValue)
  }
}
