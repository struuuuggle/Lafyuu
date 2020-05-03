//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/03.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import Rswift
import SwiftUI

extension View {
    /// R.colorを使ってフォントを指定する
    @inlinable func accentColor(_ resource: ColorResourceType) -> some View {
        self.accentColor(Color(resource.name))
    }

    @inlinable func font(_ resource: FontResourceType, size: CGFloat) -> some View {
        self.font(Font.custom(resource.fontName, size: size))
    }
}

extension Image {
    /// R.Imageを使ってImageを宣言する
    init(_ resource: ImageResourceType) {
        self.init(resource.name, bundle: resource.bundle)
    }
}

extension Text {
    /// R.fontを使ってフォントを指定する
    func font(_ resource: FontResourceType, size: CGFloat) -> Self {
        self.font(.custom(resource.fontName, size: size))
    }
}
