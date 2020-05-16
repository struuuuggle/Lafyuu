//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/16.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import SwiftUI

struct WriteReviewView: View {
  @State private(set) var rate: Int? = 0
  @State private(set) var reviewText: String = ""
  var body: some View {
    VStack(spacing: 24) {
      starRating(rate: $rate)
      reviewInputSection(text: $reviewText)
      addPhotoSection
    }
    .padding(16)
  }
}

// MARK: - Private entities
extension WriteReviewView {
  private func starRating(rate: Binding<Int?>) -> some View {
    VStack(alignment: .leading, spacing: 16) {
      Text("Please write Overall level of satisfaction with your shipping / Delivery Service")
        .textStyle(.heading)
        .lineSpacing(0.5)
      HStack(spacing: 16) {
        StarRating(rate: $rate, size: .big)
        Text("\(rate.wrappedValue ?? 0)/5")
          .kerning(0.5)
          .font(R.font.poppinsBold, size: 14)
          .foregroundColor(R.color.grey)
      }
    }
  }

  private func reviewInputSection(text: Binding<String>) -> some View {
    VStack(spacing: 16) {
      SectionHeader(leadingText: "Write Your Review")
      TextView(placeholder: "Write your review here", text: text)
        .roundCorner(with: R.color.light)
        .frame(height: 160)
    }
  }

  private var addPhotoSection: some View {
    VStack {
      SectionHeader(leadingText: "Add Photo")
      HStack {
        Button(
          action: {
            // TODO: Show ImagePicker
        }, label: {
          ZStack {
            Rectangle()
              .foregroundColor(Color.clear)
              .roundCorner(with: R.color.light)
              .frame(width: 72, height: 72)
            Image(R.image.plus)
              .renderingMode(.original)
              .resizable()
              .frame(width: 24, height: 24)
          }
        })
        Spacer()
      }
    }
  }
}

struct WriteReviewView_Previews: PreviewProvider {
  static var previews: some View {
    WriteReviewView()
  }
}
