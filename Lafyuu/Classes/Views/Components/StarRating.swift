//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/06.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import Rswift
import SwiftUI

struct StarRating: View {
  let rate: Int?
  let size: StarRatingSize
  let starSpacing: CGFloat

  init(rate: Int?, size: StarRatingSize) {
    self.rate = rate
    self.size = size
    self.starSpacing = size.starSpacing
  }

  var body: some View {
    HStack(spacing: starSpacing) {
      Image(starImage(at: 1, for: rate))
        .resizable()
        .frame(width: size.starSize, height: size.starSize)
      Image(starImage(at: 2, for: rate))
        .resizable()
        .frame(width: size.starSize, height: size.starSize)
      Image(starImage(at: 3, for: rate))
        .resizable()
        .frame(width: size.starSize, height: size.starSize)
      Image(starImage(at: 4, for: rate))
        .resizable()
        .frame(width: size.starSize, height: size.starSize)
      Image(starImage(at: 5, for: rate))
        .resizable()
        .frame(width: size.starSize, height: size.starSize)
    }
  }
}

// MARK: - Private properties
extension StarRating {
  private func starImage(at index: Int, for rate: Int?) -> ImageResource {
    guard let rate = rate else {
      return R.image.star_empty
    }

    return index <= rate
      ? R.image.star_filled
      : R.image.star_empty
  }
}

// MARK: - PreviewProvider
struct StarRating_Previews: PreviewProvider {
  static var previews: some View {
    Group {
      Group {
        ForEach(1...5, id: \.self) { rate in
          StarRating(
            rate: rate, size: .small)
            .previewDisplayName("Small")
        }
      }
      .previewLayout(.fixed(width: 120, height: 68))

      Group {
        ForEach(1...5, id: \.self) { rate in
          StarRating(
            rate: rate, size: .medium)
            .previewDisplayName("Medium")
        }
      }
      .previewLayout(.fixed(width: 160, height: 96))

      Group {
        ForEach(1...5, id: \.self) { rate in
          StarRating(
            rate: rate, size: .big)
            .previewDisplayName("Big")
        }
      }
    }
    .previewLayout(.fixed(width: 320, height: 224))
  }
}
