//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/03.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import SwiftUI

struct EmailTextField: View {
    @Binding private(set) var email: String
    let width: CGFloat
    let height: CGFloat

    init(email: Binding<String>, width: CGFloat = 343, height: CGFloat = 48) {
        self._email = email
        self.width = width
        self.height = height
    }

    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(R.color.white()!.color)
                .roundCorner(with: R.color.light)
            HStack(spacing: 10) {
                Image(R.image.message)
                    .frame(width: 24, height: 24)
                TextField(
                    "Your Email",
                    text: $email,
                    onEditingChanged: ({ _ in
                    }),
                    onCommit: ({
                    })
                ).font(
                    // TODO: stateを作ったら入力中のfontを変更 [2020/05/03]
                    R.font.poppinsRegular,
                    size: 12
                ).accentColor(
                    R.color.grey
                )
            }
            .padding([.leading, .trailing], 16)
        }
        .accentColor(Color.blue)
        .frame(
            width: width,
            height: height
        )
    }
}

struct EmailTextField_Previews: PreviewProvider {
    static var previews: some View {
        EmailTextField(email: .constant(""), width: 343, height: 48)
    }
}
