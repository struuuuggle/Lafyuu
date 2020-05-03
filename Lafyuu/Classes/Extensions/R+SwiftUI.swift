//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/03.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import Rswift
import SwiftUI

extension View {
    /// Sets the accent color for the view and the views it contains via R.color
    @inlinable func accentColor(_ resource: ColorResourceType) -> some View {
        self.accentColor(Color(resource.name))
    }

    /// Sets the default font for text in the view via R.font.
    @inlinable func font(_ resource: FontResourceType, size: CGFloat) -> some View {
        self.font(Font.custom(resource.fontName, size: size))
    }

    /// Set the foreground color within `self` via R.color.
    @inlinable func foregroundColor(_ resource: ColorResourceType) -> some View {
        self.foregroundColor(Color(resource.name))
    }
}

extension Image {
    /// Creates a labeled image via R.image
    init(_ resource: ImageResourceType) {
        self.init(resource.name, bundle: resource.bundle)
    }
}

extension Text {
    /// Sets the default font for text in the view via R.font
    func font(_ resource: FontResourceType, size: CGFloat) -> Self {
        self.font(.custom(resource.fontName, size: size))
    }

    /// Sets the color of the text displayed by this view via R.color.
    func foregroundColor(_ resource: ColorResourceType) -> Text {
        self.foregroundColor(Color(resource.name))
    }
}
