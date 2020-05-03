//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/03.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import SwiftUI

struct NameTextField: View {
    @Binding private(set) var name: String
    let placeholder: String
    let width: CGFloat
    let height: CGFloat

    init(placeholder: String, name: Binding<String>, width: CGFloat = 343, height: CGFloat = 48) {
        self.placeholder = placeholder
        self._name = name
        self.width = width
        self.height = height
    }

    var body: some View {
        ZStack {
            tfBackground
            HStack(spacing: 10) {
                icon
                textField
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

// MARK: - private properties
extension NameTextField {
    private var tfBackground: some View {
        Rectangle()
            .foregroundColor(R.color.white)
            .roundCorner(with: R.color.light)
    }

    private var icon: some View {
        Image(R.image.user)
            .frame(width: 24, height: 24)
    }

    private var textField: some View {
        TextField(
            placeholder,
            text: $name,
            onEditingChanged: ({ _ in
            }),
            onCommit: ({
            })
        )
            // TODO: stateを作ったら入力中のfontをboldに変更 [2020/05/03]
            .font(R.font.poppinsRegular, size: 12)
    }
}

struct NameTextField_Previews: PreviewProvider {
    static var previews: some View {
        NameTextField(placeholder: "Full Name", name: .constant(""))
            .previewLayout(.fixed(width: 375, height: 64))
    }
}
