//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/05.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import Foundation
import Rswift
import SwiftUI

enum Mock {}

extension Mock {
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
}

extension Mock {
  enum PromotionPager {
    static let pages = [
      PromotionBanner(type: .sale(50), expiryDate: Date()),
      PromotionBanner(type: .recommend, expiryDate: Date()),
      PromotionBanner(type: .recommend, expiryDate: Date()),
      PromotionBanner(type: .recommend, expiryDate: Date()),
      PromotionBanner(type: .recommend, expiryDate: Date()),
    ]
  }
}

extension Mock {
  enum ProductDetailPager {
    static let pages = Array(
      repeating: Image(R.image.kick_detail_top),
      count: 5
    )
  }
}

extension Mock {
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
}

extension Mock {
  enum Coupon {
    static let code = "MEGSL"
    static let discount: Int = 90
  }
}

extension Mock {
  enum Review {
    static let reviews: [Dev_Lafyuu.Review] = [
      .init(reviewerName: "James Lawson",
            profileImage: R.image.james,
            rate: 4,
            productImages: [R.image.kick_detail1, R.image.kick_detail2, R.image.kick_detail3],
            comment: "air max are always very comfortable fit, clean and just perfect in every way. just the box was too small and scrunched the sneakers up a little bit, not sure if the box was always this small but the 90s are and will always be one of my favorites.",
            date: Date()
      ),
      .init(reviewerName: "Laura Octavian",
            profileImage: R.image.laura,
            rate: 4,
            productImages: [],
            comment: "This is really amazing product, i like the design of product, I hope can buy it again!",
            date: Date()
      ),
      .init(
        reviewerName: "Jhonson Bridge",
        profileImage: R.image.jhonson,
        rate: 5,
        productImages: [],
        comment: "air max are always very comfortable fit, clean and just perfect in every way. just the box was too small and scrunched the sneakers up a little bit",
        date: Date()
      ),
      .init(
        reviewerName: "Friffin Rod",
        profileImage: R.image.griffin,
        rate: 5,
        productImages: [R.image.kick_detail2, R.image.kick_detail3],
        comment: "air max are always very comfortable fit, clean and just perfect in every way. just the box was too small",
        date: Date()
      )
    ]
  }
}

extension Mock {
  enum NotificationOffer {
    static let offers: [Offer] = [
      .init(
        id: .init(),
        title: "The Best Title",
        description: "Culpa cillum consectetur labore nulla nulla magna irure. Id veniam culpa officia aute dolor amet deserunt ex proident commodo",
        date: Date()
      ),
      .init(
        id: .init(),
        title: "SUMMER OFFER 98% Cashback",
        description: "Culpa cillum consectetur labore nulla nulla magna irure. Id veniam culpa officia aute dolor",
        date: Date()
      ),
      .init(
        id: .init(),
        title: "Special Offer 25% OFF",
        description: "Culpa cillum consectetur labore nulla nulla magna irure. Id veniam culpa officia aute dolor amet deserunt ex proident commodo",
        date: Date()
      )
    ]
  }
}

extension Mock {
  enum NotificationFeed {
    static let feeds: [Feed] = [
      .init(
        id: .init(),
        title: "New Product",
        description: "Nike Air Zoom Pegasus 36 Miami - Special For your Activity",
        date: Date(),
        imageUrl: R.image.kick_1.url
      ),
      .init(
        id: .init(),
        title: "Best Product",
        description: "Nike Air Zoom Pegasus 36 Miami - Special For your Activity",
        date: Date(),
        imageUrl: R.image.kick_2.url
      ),
      .init(
        id: .init(),
        title: "New Product",
        description: "Nike Air Zoom Pegasus 36 Miami - Special For your Activity",
        date: Date(),
        imageUrl: R.image.kick_3.url
      )
    ]
  }
}

// MARK: - Helper

extension URL {
  var image: ImageResource {
    R.image.kick_1
  }
}

extension ImageResource {
  var url: URL {
    URL(string: "https://github.com/struuuuggle/Lafyuu/")!
  }
}
