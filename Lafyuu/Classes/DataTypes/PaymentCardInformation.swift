//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/23.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import Foundation
import Rswift

struct PaymentCardInformation: Codable, Identifiable {
  let id: UUID
  let number: String
  let lastName: String
  let firstName: String
  let expiringMonth: Int
  let expiringYear: Int
  let paymentCardType: PaymentCardType
}

enum PaymentCardType: String, Codable {
  case visa
  case amex
  case jcb
  case masterCard
}

extension PaymentCardType {
  var color: ColorResource {
    switch self {
    case .masterCard:
      return R.color.blue
    default:
      return R.color.purple
    }
  }
}
