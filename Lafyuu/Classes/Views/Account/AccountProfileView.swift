//
//  Created by Mikiya Abe(@struuuuggle) on 2020/06/13.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import SwiftUI

struct AccoutProfileDetailRow: View {
  var body: some View {
    EmptyView()
  }
}

struct AccountProfileView: View {
  var body: some View {
    VStack(spacing: 32) {
      //        AccoutProfileCardView()

      List {
        ForEach(1...5, id: \.self) { _ in
          AccoutProfileDetailRow()
        }
      }
    }
  }
}

struct AccountProfileView_Previews: PreviewProvider {
  static var previews: some View {
    AccountProfileView()
  }
}
