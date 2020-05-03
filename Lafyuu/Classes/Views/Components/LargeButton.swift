//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/03.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import SwiftUI

struct LargeButton: View {
    let label: String
    let type: ButtonType
    let width: CGFloat
    let height: CGFloat
    let handler: (() -> Void)

    init(
        label: String,
        type: ButtonType = .fill,
        width: CGFloat = 343,
        height: CGFloat = 56,
        handler: @escaping (() -> Void)
    ) {
        self.label = label
        self.type = type
        self.width = width
        self.height = height
        self.handler = handler
    }

    var body: some View {
        Button(
            action: ({
                self.handler()
            }),
            label: ({
                Text(label)
                    .padding(
                        [.top, .bottom, .leading, .trailing],
                        16
                ).frame(
                    width: width,
                    height: height
                )
            })
        )
            .roundCorner(
                with: type.bgColor
        )
            .font(
                R.font.poppinsBold,
                size: 14
        )
            // TODO: 角が尖っている問題を修正
            .background(
                type.bgColor
        )
            .foregroundColor(
                type.fgColor
        )
    }
}

struct LargeButton_Previews: PreviewProvider {
    static var previews: some View {
        LargeButton(label: "Large Button") {
            print("Tap Large Button")
        }
    }
}
