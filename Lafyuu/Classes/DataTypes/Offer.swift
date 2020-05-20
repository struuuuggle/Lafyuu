//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/21.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import Foundation

struct Offer: Codable, Identifiable {
  let id: UUID
  let title: String
  let description: String
  let date: Date
}
