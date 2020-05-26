//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/23.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import Rswift
import SwiftUI

enum ListRowEntry: String, CaseIterable {
  // MARK: Account
  case profile = "Profile"
  case order = "Order"
  case address = "Address"
  case payment = "Payment"
  // MARK: Payment
  case creditOrDebit = "Credit Card Or Debit"
  case paypal = "Paypal"
  case bankTransfer = "Bank Transfer"

  var text: String {
    rawValue
  }

  var image: ImageResource {
    switch self {
    case .profile:
      return R.image.user
    case .order:
      return R.image.bag
    case .address:
      return R.image.location
    case .payment:
      return R.image.credit_card
    case .creditOrDebit:
      return R.image.credit_card
    case .paypal:
      return R.image.paypal
    case .bankTransfer:
      return R.image.bank
    }
  }
}

struct ListRow: View {
  private(set) var entry: ListRowEntry

  var body: some View {
    HStack(spacing: .horizontal) {
      Image(entry.image)
        .imageStyle(.notificationIcon) // TODO: paypal icon color [2020/05/23]
      Text(entry.text)
        .textStyle(.heading)

      Spacer()
    }
    .padding(.horizontal, .horizontal)
    .frame(height: 56)
  }
}

struct ListRow_Previews: PreviewProvider {
  static var previews: some View {
    Group {
      ForEach(ListRowEntry.allCases, id: \.self) { entry in
        ListRow(entry: entry)
          .previewLayout(.fixed(width: 375, height: 56))
          .previewDisplayName(entry.text)
      }
    }
  }
}
