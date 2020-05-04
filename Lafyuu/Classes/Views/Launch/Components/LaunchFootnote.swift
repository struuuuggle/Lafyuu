//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/05.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import SwiftUI

struct LaunchFootnote: View {
    let type: LaunchType
    let action: () -> Void

    init(type: LaunchType, action: @escaping () -> Void) {
        self.type = type
        self.action = action
    }

    var body: some View {
        HStack(spacing: 4) {
            Text(type.footnoteLabel)
                .kerning(0.5)
                .font(R.font.poppinsRegular, size: 12)
                .foregroundColor(R.color.grey)
            Button(
                action: action,
                label: {
                    Text(type.footnoteButonText)
                        .kerning(0.5)
                        .font(R.font.poppinsBold, size: 12)
            })
                .foregroundColor(R.color.blue)
        }
    }
}

struct LaunchFootnote_Previews: PreviewProvider {
    static var previews: some View {
        LaunchFootnote(type: .register) {}
            .previewLayout(.fixed(width: 375, height: 64))
    }
}
