//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/09.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import Rswift
import SwiftUI

struct ReviewFilter: View {

  var body: some View {
    HStack {
      allReviewButton {
      }
      ForEach(ProductReviewRate.allCases, id: \.self) { rate in
        ReviewStarButton(rate: rate, action: {
        })
      }
    }
  }
}

// MARK: - Private properties
extension ReviewFilter {
  private func allReviewButton(width: CGFloat = 100, height: CGFloat = 50, action: @escaping () -> Void) -> some View {
    Button(action: action, label: {
      Text("All Review")
        .kerning(Constant.Text.kerning)
        .font(R.font.poppinsBold, size: 12)
        .foregroundColor(R.color.blue)
    })
      .frame(width: width, height: height)
      .background(Color(R.color.blue).opacity(0.1))
      .roundCorner()
  }
}

// MARK: - PreviewProvider
struct ReviewFilter_Previews: PreviewProvider {
  static var previews: some View {
    ReviewFilter()
      .previewLayout(.fixed(width: 500, height: 60))
  }
}
