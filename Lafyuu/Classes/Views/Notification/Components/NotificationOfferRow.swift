//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/21.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import Rswift
import SwiftUI

struct NotificationOfferRow: View {
  private(set) var image: ImageResource
  private(set) var imageSize: Self.ImageSize
  private(set) var offer: Offer

  var body: some View {
    HStack(alignment: .top, spacing: 12) {
      Image(image)
        .resizable()
        .renderingMode(imageSize.render)
        .foregroundColor(R.color.blue)
        .frame(width: imageSize.frame, height: imageSize.frame)
      VStack(alignment: .leading, spacing: 8) {
        Text(offer.title)
          .textStyle(.heading)
        Text(offer.description)
          .textStyle(.notificationOfferDescription)
        Text(offer.date.yMMMdhm12(local: .us))
          .textStyle(.notificationOfferDate)
      }
    }
  }
}

// MARK: - Private Entities
extension NotificationOfferRow {
  enum ImageSize {
    case icon
    case thumbnail

    var frame: CGFloat {
      switch self {
      case .icon:
        return 24
      case .thumbnail:
        return 48
      }
    }

    var render: Image.TemplateRenderingMode {
      switch self {
      case .icon:
        return .template
      case .thumbnail:
        return .original
      }
    }
  }
}

struct NotificationOfferRow_Previews: PreviewProvider {
  static var previews: some View {
    Group {
      NotificationOfferRow(
        image: R.image.kick_1,
        imageSize: .thumbnail,
        offer: Mock.NotificationOffer.offers.randomElement()!
      )
        .lafyuuPadding()
        .previewLayout(.fixed(width: 400, height: 200))

      NotificationOfferRow(
        image: R.image.offer,
        imageSize: .icon,
        offer: Mock.NotificationOffer.offers.randomElement()!
      )
        .lafyuuPadding()
        .previewLayout(.fixed(width: 400, height: 200))
    }
  }
}
