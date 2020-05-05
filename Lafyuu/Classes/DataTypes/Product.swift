//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/05.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import Foundation
import Rswift

struct Product {
  let name: String
  /// TODO: Use URL [2020/05/05]
  let imageUrl: ImageResource
  let currentPrice: Int
  let regularPrice: Int
  let discountRate: Int
}
