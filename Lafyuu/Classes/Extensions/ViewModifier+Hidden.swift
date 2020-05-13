//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/14.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import SwiftUI

extension View {

  /// Toggle the View with `hidden` value
  ///
  ///     @State isHidden: Bool = true
  ///     Text("Hello")
  ///         .hidden($isHidden)
  ///
  func hidden(_ hidden: Binding<Bool>) -> some View {
    ModifiedContent(content: self, modifier: HiddenViewModifier(isHidden: hidden))
  }
}

struct HiddenViewModifier: ViewModifier {
  @Binding var isHidden: Bool

  func body(content: Content) -> some View {
    VStack {
      if isHidden {
        EmptyView()
      } else {
        content
      }
    }
  }
}
