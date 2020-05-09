//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/09.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import Foundation

enum ProductReviewRate: String, CaseIterable {
  case one = "1"
  case two = "2"
  case tree = "3"
  case four = "4"
  case five = "5"

  var reviewFilterButtonText: String {
    self.rawValue
  }
}
