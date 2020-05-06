//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/05.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import Foundation
import Rswift

struct Product: Identifiable {
  let id: UUID = .init()
  let name: String
  var rate: Int?
  var reviews: [Review]
  var reviewerCount: Int?
  // TODO: Use URL [2020/05/05]
  let imageUrl: ImageResource
  let currentPrice: Int
  let regularPrice: Int
  let discountRate: Int
  var specification: ProductSpecification?
}

struct ProductSpecification {
  let shown: [String]
  let style: String
  let description: String
}

struct Review {
  let reviewerName: String?
  // TODO: Use URL [2020/05/07]
  var reviewerImage: ImageResource
  let rate: Int?
  let comment: String?
  let date: Date
}
