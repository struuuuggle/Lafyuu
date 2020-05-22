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
        label: { AddPaymentRow(type: .creditOrDebit) }
      )
      NavigationLink(
        destination: PaymentAddCardView(),
        label: { AddPaymentRow(type: .paypal) }
      )
      NavigationLink(
        destination: EmptyView(),
        label: { AddPaymentRow(type: .bankTransfer) }
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
