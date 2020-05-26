//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/23.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import SwiftUI

struct AddPaymentView: View {
  var body: some View {
    VStack {
      NavigationLink(
        destination: PaymentCardView(),
        label: { ListRow(entry: .creditOrDebit) }
      )
      NavigationLink(
        destination: PaymentAddCardView(),
        label: { ListRow(entry: .paypal) }
      )
      NavigationLink(
        destination: EmptyView(),
        label: { ListRow(entry: .bankTransfer) }
      )
      Spacer()
    }
  }
}

struct AddPaymentView_Previews: PreviewProvider {
  static var previews: some View {
    AddPaymentView()
  }
}
