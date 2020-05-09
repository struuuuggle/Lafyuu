//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/05.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import Foundation
import Rswift
import SwiftUI

enum Mock {

  static let products: [Product] = [
    .init(
      name: "FS - Nike Air Max 270 React ENG",
      rate: (1...5).randomElement(),
      reviews: [
        .init(reviewerName: "James Lawson",
              profileImage: R.image.james,
              rate: 4,
              productImages: [R.image.kick_detail1, R.image.kick_detail2, R.image.kick_detail3],
              comment: "air max are always very comfortable fit, clean and just perfect in every way. just the box was too small and scrunched the sneakers up a little bit, not sure if the box was always this small but the 90s are and will always be one of my favorites.",
              date: Date()
        )
      ],
      imageUrl: ProductImage.allCases.randomElement()!.image,
      currentPrice: (10000...20000).randomElement()!,
      regularPrice: (35000...60000).randomElement()!,
      discountRate: (1..<50).randomElement()!,
      specification: .init(
        shown: ["Laser", "Blue/Anthracite/Watermel", "on/White"],
        style: "CD0113-400",
        description: "The Nike Air Max 270 React ENG combines a full-length React foam midsole with a 270 Max Air unit for unrivaled comfort and a striking visual experience."
      )
    ),
    .init(
      name: "FS - Nike Air Max 270 React ENG",
      rate: (1...5).randomElement(),
      reviews: [
        .init(reviewerName: "James Lawson",
              profileImage: R.image.james,
              rate: 4,
              productImages: [R.image.kick_detail1, R.image.kick_detail2, R.image.kick_detail3],
              comment: "air max are always very comfortable fit, clean and just perfect in every way. just the box was too small and scrunched the sneakers up a little bit, not sure if the box was always this small but the 90s are and will always be one of my favorites.",
              date: Date()
        )
      ],
      imageUrl: ProductImage.allCases.randomElement()!.image,
      currentPrice: (10000...20000).randomElement()!,
      regularPrice: (35000...60000).randomElement()!,
      discountRate: (1..<50).randomElement()!,
      specification: .init(
        shown: ["Laser", "Blue/Anthracite/Watermel", "on/White"],
        style: "CD0113-400",
        description: "The Nike Air Max 270 React ENG combines a full-length React foam midsole with a 270 Max Air unit for unrivaled comfort and a striking visual experience."
      )
    ),
    .init(
      name: "FS - Nike Air Max 270 React ENG",
      rate: (1...5).randomElement(),
      reviews: [
        .init(reviewerName: "James Lawson",
              profileImage: R.image.james,
              rate: 4,
              productImages: [R.image.kick_detail1, R.image.kick_detail2, R.image.kick_detail3],
              comment: "air max are always very comfortable fit, clean and just perfect in every way. just the box was too small and scrunched the sneakers up a little bit, not sure if the box was always this small but the 90s are and will always be one of my favorites.",
              date: Date()
        )
      ],
      imageUrl: ProductImage.allCases.randomElement()!.image,
      currentPrice: (10000...20000).randomElement()!,
      regularPrice: (35000...60000).randomElement()!,
      discountRate: (1..<50).randomElement()!,
      specification: .init(
        shown: ["Laser", "Blue/Anthracite/Watermel", "on/White"],
        style: "CD0113-400",
        description: "The Nike Air Max 270 React ENG combines a full-length React foam midsole with a 270 Max Air unit for unrivaled comfort and a striking visual experience."
      )
    ),
    .init(
      name: "FS - Nike Air Max 270 React ENG",
      rate: (1...5).randomElement(),
      reviews: [
        .init(reviewerName: "James Lawson",
              profileImage: R.image.james,
              rate: 4,
              productImages: [R.image.kick_detail1, R.image.kick_detail2, R.image.kick_detail3],
              comment: "air max are always very comfortable fit, clean and just perfect in every way. just the box was too small and scrunched the sneakers up a little bit, not sure if the box was always this small but the 90s are and will always be one of my favorites.",
              date: Date()
        )
      ],
      imageUrl: ProductImage.allCases.randomElement()!.image,
      currentPrice: (10000...20000).randomElement()!,
      regularPrice: (35000...60000).randomElement()!,
      discountRate: (1..<50).randomElement()!,
      specification: .init(
        shown: ["Laser", "Blue/Anthracite/Watermel", "on/White"],
        style: "CD0113-400",
        description: "The Nike Air Max 270 React ENG combines a full-length React foam midsole with a 270 Max Air unit for unrivaled comfort and a striking visual experience."
      )
    ),
    .init(
      name: "FS - Nike Air Max 270 React ENG",
      rate: (1...5).randomElement(),
      reviews: [
        .init(reviewerName: "James Lawson",
              profileImage: R.image.james,
              rate: 4,
              productImages: [R.image.kick_detail1, R.image.kick_detail2, R.image.kick_detail3],
              comment: "air max are always very comfortable fit, clean and just perfect in every way. just the box was too small and scrunched the sneakers up a little bit, not sure if the box was always this small but the 90s are and will always be one of my favorites.",
              date: Date()
        )
      ],
      imageUrl: ProductImage.allCases.randomElement()!.image,
      currentPrice: (10000...20000).randomElement()!,
      regularPrice: (35000...60000).randomElement()!,
      discountRate: (1..<50).randomElement()!,
      specification: .init(
        shown: ["Laser", "Blue/Anthracite/Watermel", "on/White"],
        style: "CD0113-400",
        description: "The Nike Air Max 270 React ENG combines a full-length React foam midsole with a 270 Max Air unit for unrivaled comfort and a striking visual experience."
      )
    ),
    .init(
      name: "FS - Nike Air Max 270 React ENG",
      rate: (1...5).randomElement(),
      reviews: [
        .init(reviewerName: "James Lawson",
              profileImage: R.image.james,
              rate: 4,
              productImages: [R.image.kick_detail1, R.image.kick_detail2, R.image.kick_detail3],
              comment: "air max are always very comfortable fit, clean and just perfect in every way. just the box was too small and scrunched the sneakers up a little bit, not sure if the box was always this small but the 90s are and will always be one of my favorites.",
              date: Date()
        )
      ],
      imageUrl: ProductImage.allCases.randomElement()!.image,
      currentPrice: (10000...20000).randomElement()!,
      regularPrice: (35000...60000).randomElement()!,
      discountRate: (1..<50).randomElement()!,
      specification: .init(
        shown: ["Laser", "Blue/Anthracite/Watermel", "on/White"],
        style: "CD0113-400",
        description: "The Nike Air Max 270 React ENG combines a full-length React foam midsole with a 270 Max Air unit for unrivaled comfort and a striking visual experience."
      )
    ),
    .init(
      name: "FS - Nike Air Max 270 React ENG",
      rate: (1...5).randomElement(),
      reviews: [
        .init(reviewerName: "James Lawson",
              profileImage: R.image.james,
              rate: 4,
              productImages: [R.image.kick_detail1, R.image.kick_detail2, R.image.kick_detail3],
              comment: "air max are always very comfortable fit, clean and just perfect in every way. just the box was too small and scrunched the sneakers up a little bit, not sure if the box was always this small but the 90s are and will always be one of my favorites.",
              date: Date()
        )
      ],
      imageUrl: ProductImage.allCases.randomElement()!.image,
      currentPrice: (10000...20000).randomElement()!,
      regularPrice: (35000...60000).randomElement()!,
      discountRate: (1..<50).randomElement()!,
      specification: .init(
        shown: ["Laser", "Blue/Anthracite/Watermel", "on/White"],
        style: "CD0113-400",
        description: "The Nike Air Max 270 React ENG combines a full-length React foam midsole with a 270 Max Air unit for unrivaled comfort and a striking visual experience."
      )
    ),
    .init(
      name: "FS - Nike Air Max 270 React ENG",
      rate: (1...5).randomElement(),
      reviews: [
        .init(reviewerName: "James Lawson",
              profileImage: R.image.james,
              rate: 4,
              productImages: [R.image.kick_detail1, R.image.kick_detail2, R.image.kick_detail3],
              comment: "air max are always very comfortable fit, clean and just perfect in every way. just the box was too small and scrunched the sneakers up a little bit, not sure if the box was always this small but the 90s are and will always be one of my favorites.",
              date: Date()
        )
      ],
      imageUrl: ProductImage.allCases.randomElement()!.image,
      currentPrice: (10000...20000).randomElement()!,
      regularPrice: (35000...60000).randomElement()!,
      discountRate: (1..<50).randomElement()!,
      specification: .init(
        shown: ["Laser", "Blue/Anthracite/Watermel", "on/White"],
        style: "CD0113-400",
        description: "The Nike Air Max 270 React ENG combines a full-length React foam midsole with a 270 Max Air unit for unrivaled comfort and a striking visual experience."
      )
    ),
    .init(
      name: "FS - Nike Air Max 270 React ENG",
      rate: (1...5).randomElement(),
      reviews: [
        .init(reviewerName: "James Lawson",
              profileImage: R.image.james,
              rate: 4,
              productImages: [R.image.kick_detail1, R.image.kick_detail2, R.image.kick_detail3],
              comment: "air max are always very comfortable fit, clean and just perfect in every way. just the box was too small and scrunched the sneakers up a little bit, not sure if the box was always this small but the 90s are and will always be one of my favorites.",
              date: Date()
        )
      ],
      imageUrl: ProductImage.allCases.randomElement()!.image,
      currentPrice: (10000...20000).randomElement()!,
      regularPrice: (35000...60000).randomElement()!,
      discountRate: (1..<50).randomElement()!,
      specification: .init(
        shown: ["Laser", "Blue/Anthracite/Watermel", "on/White"],
        style: "CD0113-400",
        description: "The Nike Air Max 270 React ENG combines a full-length React foam midsole with a 270 Max Air unit for unrivaled comfort and a striking visual experience."
      )
    ),
  ]

  enum PromotionPager {
    static let pages = [
      PromotionBanner(type: .sale(50), expiryDate: Date()),
      PromotionBanner(type: .recommend, expiryDate: Date()),
      PromotionBanner(type: .recommend, expiryDate: Date()),
      PromotionBanner(type: .recommend, expiryDate: Date()),
      PromotionBanner(type: .recommend, expiryDate: Date()),
    ]
  }

  enum ProductDetailPager {
    static let pages = Array(
      repeating: Image(R.image.kick_detail_top),
      count: 5
    )
  }

  enum ProductImage: CaseIterable {
    case bag1
    case bag2
    case bag3
    case bag4
    case kick1
    case kick2
    case kick3
    case kick4

    var image: ImageResource {
      switch self {
      case .bag1:
        return R.image.bag_1
      case .bag2:
        return R.image.bag_2
      case .bag3:
        return R.image.bag_3
      case .bag4:
        return R.image.bag_4
      case .kick1:
        return R.image.kick_1
      case .kick2:
        return R.image.kick_2
      case .kick3:
        return R.image.kick_3
      case .kick4:
        return R.image.kick_4
      }
    }
  }

  enum Coupon {
    static let code = "MEGSL"
    static let discount: Int = 90
  }
}
