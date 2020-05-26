//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/03.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import SwiftUI

struct AccountView: View {
  var body: some View {
    VStack {
      NavigationLink(
        destination: EmptyView(),
        label: { ListRow(entry: .profile) }
      )
      NavigationLink(
        destination: EmptyView(),
        label: { ListRow(entry: .order) }
      )
      NavigationLink(
        destination: EmptyView(),
        label: { ListRow(entry: .address) }
      )
      NavigationLink(
        destination: AddPaymentView(),
        label: { ListRow(entry: .payment) }
      )
      Spacer()
    }
  }
}

struct AccountView_Previews: PreviewProvider {
  static var previews: some View {
    AccountView()
  }
}
