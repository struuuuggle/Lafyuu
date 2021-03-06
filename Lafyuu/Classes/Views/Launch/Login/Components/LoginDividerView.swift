//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/03.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import SwiftUI

struct LoginDividerView: View {
  var body: some View {
    HStack {
      line; orText; line
    }
  }
}

// MARK: - private properties
extension LoginDividerView {
  private var line: some View {
    VStack {
      Divider()
        .background(R.color.light()!.color)
    }
  }

  private var orText: some View {
    Text("OR")
      .font(R.font.poppinsBold, size: 14)
      .foregroundColor(R.color.grey)
  }
}

struct LoginDividerView_Previews: PreviewProvider {
  static var previews: some View {
    LoginDividerView()
      .previewLayout(.fixed(width: 375, height: 64))
  }
}
