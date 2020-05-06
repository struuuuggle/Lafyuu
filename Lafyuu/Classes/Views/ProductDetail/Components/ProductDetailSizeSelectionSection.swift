//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/07.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import SwiftUI

struct ProductDetailSizeSelectionSection: View {
  @State var selectedSize: MensKickSize = "6.5"

  var body: some View {
    VStack(spacing: 12) {
      SectionHeader(leadingText: "Select Size")
      container
    }
  }
}

// MARK: - Private properties
extension ProductDetailSizeSelectionSection {
  private var container: some View {
    ScrollView(.horizontal, showsIndicators: false) {
      HStack(spacing: 16) {
        ForEach(KickSize.mens, id: \.self) { size in
          self.sizeButton(size: size)
        }
      }
    }
    .frame(height: 48)
  }

  private func sizeButton(size: MensKickSize) -> some View {
    Button(
      action: {
        self.selectedSize = size
    },
      label: {
        self.sizeButtonLabel(size: size)
    })
      .animation(.easeOut)
  }

  private func sizeButtonLabel(size: MensKickSize) -> some View {
    ZStack {
      Circle()
        .stroke(
          (selectedSize == size) ? Color(R.color.blue) : Color(R.color.light),
          lineWidth: 2
      )
        .padding(1)
        .foregroundColor(R.color.white)
      Text("\(size)")
        .font(R.font.poppinsBold, size: 14)
        .foregroundColor(R.color.dark)
    }
    .frame(width: 48, height: 48)
  }
}

// MARK: - PreviewProvider
struct ProductDetailSizeSelectionSection_Previews: PreviewProvider {
  static var previews: some View {
    ProductDetailSizeSelectionSection()
      .padding(.horizontal, 16)
      .previewLayout(.fixed(width: 375, height: 100))
  }
}
