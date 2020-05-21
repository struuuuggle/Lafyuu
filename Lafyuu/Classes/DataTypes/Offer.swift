//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/21.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import Foundation

protocol BaseNotificationContent: Codable, Identifiable {
  var id: UUID { get set }
  var title: String { get set }
  var description: String { get set }
  var date: Date { get set }
}

struct Offer: BaseNotificationContent {
  var id: UUID
  var title: String
  var description: String
  var date: Date
}
