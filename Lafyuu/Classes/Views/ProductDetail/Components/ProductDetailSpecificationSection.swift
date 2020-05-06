//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/07.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import SwiftUI

struct ProductDetailSpecificationSection: View {
  let specification: ProductSpecification?

  var body: some View {
    VStack(spacing: 12) {
      SectionHeader(leadingText: "Specification")
      container
    }
  }

  private var container: some View {
    VStack(alignment: .leading, spacing: 16) {
      HStack(alignment: .top) {
        containerLeadingText("Shown:"); Spacer(); containerShown
      }
      HStack {
        containerLeadingText("Style:"); Spacer(); containerStyle
      }
      containerDescription
    }
  }
}

// MARK: - Private properties
extension ProductDetailSpecificationSection {

  private func containerLeadingText(_ text: String) -> Text {
    Text(text)
      .kerning(0.5)
      .font(R.font.poppinsRegular, size: 12)
      .foregroundColor(R.color.dark)
  }

  private var containerShown: some View {
    VStack(alignment: .trailing) {
      ForEach(specification?.shown ?? [], id: \.self) { shown in
        Text(shown)
          .kerning(0.5)
          .font(R.font.poppinsRegular, size: 12)
          .foregroundColor(R.color.grey)
      }
    }
  }

  private var containerStyle: some View {
    Text(specification?.style ?? "")
      .kerning(0.5)
      .font(R.font.poppinsRegular, size: 12)
      .foregroundColor(R.color.grey)
  }

  private var containerDescription: some View {
    Text(specification?.description ?? "")
      .kerning(0.5)
      .lineLimit(5)
      .font(R.font.poppinsRegular, size: 12)
      .foregroundColor(R.color.grey)
      .lineSpacing(0.5)
      .frame(minHeight: 64)
  }
}

struct ProductDetailSpecificationSection_Previews: PreviewProvider {
  static var previews: some View {
    ProductDetailSpecificationSection(
      specification: .init(
        shown: ["Laser", "Blue/Anthracite/Watermel", "on/White"],
        style: "CD0113-400",
        description: "The Nike Air Max 270 React ENG combines a full-length React foam midsole with a 270 Max Air unit for unrivaled comfort and a striking visual experience."
      )
    )
      .padding(.horizontal, 16)
  }
}
