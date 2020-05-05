//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/03.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import SwiftUI

struct ThirdPartyLoginButton: View {
  private let oAuthType: OAuthType
  private let width: CGFloat
  private let height: CGFloat
  private let handler: (() -> Void)

  init(loginType: OAuthType, width: CGFloat = 343, height: CGFloat = 56, handler: @escaping (() -> Void)) {
    self.oAuthType = loginType
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
      Text("Login with \(oAuthType.rawValue)")
        .kerning(0.5)
        .font(
          R.font.poppinsBold,
          size: 14
      )
        .foregroundColor(
          R.color.grey
      )
      Spacer()
    }
  }

  private var logoLayer: some View {
    HStack(spacing: 10) {
      Image(oAuthType.logo)
        .renderingMode(.original)
        .frame(
          width: Constant.Icon.Size.small,
          height: Constant.Icon.Size.small
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
    .previewLayout(.fixed(width: 375, height: 64))
  }
}
