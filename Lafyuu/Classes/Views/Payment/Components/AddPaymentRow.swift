//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/23.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import Rswift
import SwiftUI

enum PaymentType: String {
  case creditOrDebit
  case paypal
  case bankTransfer

  var text: String {
    self .rawValue
  }

  var image: ImageResource {
    switch self {
    case .creditOrDebit:
      return R.image.credit_card
    case .paypal:
      return R.image.paypal
    case .bankTransfer:
      return R.image.bank
    }
  }
}

struct AddPaymentRow: View {
  private(set) var type: PaymentType

  var body: some View {
    HStack(spacing: .horizontal) {
      Image(type.image)
        .imageStyle(.notificationIcon) // TODO: paypal icon color [2020/05/23]
      Text(type.text)
        .textStyle(.heading)

      Spacer()
    }
    .padding(.horizontal, .horizontal)
    .frame(height: 56)
  }
}

struct AddPaymentRow_Previews: PreviewProvider {
  static var previews: some View {
    Group {
      AddPaymentRow(type: .creditOrDebit)
        .previewLayout(.fixed(width: 375, height: 60))
        .previewDisplayName(PaymentType.creditOrDebit.text)

      AddPaymentRow(type: .paypal)
        .previewLayout(.fixed(width: 375, height: 60))
        .previewDisplayName(PaymentType.paypal.text)

      AddPaymentRow(type: .bankTransfer)
        .previewLayout(.fixed(width: 375, height: 60))
        .previewDisplayName(PaymentType.bankTransfer.text)
    }
  }
}
