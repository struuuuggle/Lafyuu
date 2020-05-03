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
    /// R.color.blue()!.colorのようにアクセスできる
    var color: Color {
        Color(self)
    }
}
