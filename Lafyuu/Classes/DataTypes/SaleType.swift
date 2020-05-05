//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/06.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

enum SaleType: String {
  case flashSale
  case megaSale

  var name: String {
    switch self {
    case .flashSale:
      return "Flash Sale"
    case .megaSale:
      return "Mega Sale"
    }
  }
}
