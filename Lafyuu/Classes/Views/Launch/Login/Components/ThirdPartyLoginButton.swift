//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/03.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import SwiftUI

struct ThirdPartyLoginButton: View {
    private let loginType: LoginType
    private let width: CGFloat
    private let height: CGFloat
    private let handler: (() -> Void)

    init(loginType: LoginType, width: CGFloat = 343, height: CGFloat = 56, handler: @escaping (() -> Void)) {
        self.loginType = loginType
        self.width = width
        self.height = height
        self.handler = handler
    }

    var body: some View {
        Button(
            action: handler,
            label: { label }
        )
            .roundCorner(with: R.color.light)
    }
}

// MARK: - private properties
extension ThirdPartyLoginButton {
    private var buttonText: some View {
        HStack {
            Spacer()
            Text("Login with \(loginType.rawValue)")
                .kerning(0.5)
                .font(
                    R.font.poppinsBold,
                    size: 14
            )
                .foregroundColor(
                    R.color.grey()!.color
            )
            Spacer()
        }
    }

    private var logoLayer: some View {
        HStack(spacing: 10) {
            Image(loginType.logo)
                .renderingMode(.original)
                .frame(
                    width: Constant.Icon.size,
                    height: Constant.Icon.size
            )
            Spacer()
        }
        .padding(.leading, 16)
    }

    private var label: some View {
        ZStack {
            buttonText
            logoLayer
        }
        .frame(width: width, height: height)
    }
}

struct ThirdPartyLoginButton_Previews: PreviewProvider {
    static var previews: some View {
        ThirdPartyLoginButton(loginType: .google) {
        }
    }
}
