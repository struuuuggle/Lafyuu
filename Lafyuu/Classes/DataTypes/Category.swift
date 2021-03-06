//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/05.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import Foundation
import Rswift

enum Category: String, CaseIterable {
  case manBag = "man_bag"
  case manShoes = "man_shoes"
  case manUnderwear = "man_underwear"
  case manPants = "man_pants"
  case shirt
  case tshirt
  case womanBag = "woman_bag"
  case womanpants = "woman_pants"
  case womanShoes = "woman_shoes"
  case womanTshirt = "woman_tshirt"
  case bikini
  case dress
  case skirt
}

extension Category: Identifiable {
  var id: String { rawValue }
}

extension Category {
  static var manFashionItems: [Category] {
    [.manBag, .manShoes, .manUnderwear, .manPants, .shirt, .tshirt]
  }
  static var womanFashionItems: [Category] {
    [.womanBag, .womanpants, .womanShoes, .womanTshirt, .bikini, .dress, .skirt]
  }
}

extension Category {
  var name: String {
    switch self {
    case .bikini:
      return "Bikini"
    case .dress:
      return "Dress"
    case .manBag:
      return "Man Work Equipment"
    case .manShoes:
      return "Man Shoes"
    case .manUnderwear:
      return "Man Underwear"
    case .shirt:
      return "Man Shirt"
    case .skirt:
      return "Skirt"
    case .tshirt:
      return "Man T-shirt"
    case .womanBag:
      return "Woman Bag"
    case .womanpants:
      return "Woman Pants"
    case .womanShoes:
      return "High Heels"
    case .womanTshirt:
      return "Woman T-Shirt"
    case .manPants:
      return "Man Pants"
    }
  }

  var imageName: String {
    "prd_\(self.rawValue)"
  }
}
