//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/07.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import SwiftUI

struct ProductDetailColorSelectionSection: View {
  @State var selectedColor: LafyuuColor = .yellow

  var body: some View {
    VStack(spacing: 12) {
      SectionHeader(leadingText: "Select Color")
      container
    }
  }
}

// MARK: - Private properties
extension ProductDetailColorSelectionSection {
  private var container: some View {
    ScrollView(.horizontal, showsIndicators: false) {
      HStack(spacing: 16) {
        ForEach(LafyuuColor.allCases, id: \.self) { color in
          self.colorButton(color: color)
        }
      }
    }
    .frame(height: 48)
  }

  private func colorButton(color: LafyuuColor) -> some View {
    Button(
      action: {
        self.selectedColor = color
    },
      label: {
        self.colorButtonLabel(color: color)
    })
      .animation(.easeOut)
  }

  private func colorButtonLabel(color: LafyuuColor) -> some View {
    ZStack {
      Circle()
        .foregroundColor(Color(color.rawValue))
      Circle()
        .foregroundColor((color == selectedColor) ? R.color.white()!.color : Color.clear)
        .frame(width: 16, height: 16)
    }
    .frame(width: 48, height: 48)
  }
}

// MARK: - PreviewProvider
struct ProductDetailColorSelectionSection_Previews: PreviewProvider {
  static var previews: some View {
    ProductDetailColorSelectionSection()
      .padding(.horizontal, 16)
      .previewLayout(.fixed(width: 375, height: 100))
  }
}
