//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/06.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import Rswift
import SwiftUI

struct StarRating: View {
  @Binding private(set) var rate: Int?
  let size: StarRatingSize
  let starSpacing: CGFloat

  init(rate: Binding<Int?>, size: StarRatingSize) {
    self._rate = rate
    self.size = size
    self.starSpacing = size.starSpacing
  }

  var body: some View {
    HStack(spacing: starSpacing) {
      ForEach(1...5, id: \.self) { i in
        Button(
          action: {
            self.rate = i
        },
          label: {
            Image(self.starImage(at: i, for: self.rate))
              .renderingMode(.original)
              .resizable()
              .frame(width: self.size.starSize, height: self.size.starSize)
        })
      }
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
  @State static private var rate: Int? = 0
  static var previews: some View {
    Group {
      VStack {
        ForEach(0...5, id: \.self) { rate in
          StarRating(
            rate: .constant(rate), size: .small)
        }
      }
      .previewDisplayName("Small")
      .previewLayout(.fixed(width: 120, height: 150))

      VStack {
        ForEach(0...5, id: \.self) { rate in
          StarRating(
            rate: .constant(rate), size: .medium)
        }
      }
      .previewDisplayName("Medium")
      .previewLayout(.fixed(width: 150, height: 200))

      VStack {
        ForEach(0...5, id: \.self) { rate in
          StarRating(
            rate: .constant(rate), size: .big)
        }
      }
      .previewDisplayName("Large")
      .previewLayout(.fixed(width: 300, height: 350))

      VStack {
        StarRating(rate: $rate, size: .big)
      }
      .previewDisplayName("Tappable")
      .previewLayout(.fixed(width: 300, height: 60))
    }
  }
}
