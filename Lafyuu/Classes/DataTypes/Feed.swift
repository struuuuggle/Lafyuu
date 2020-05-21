//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/22.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import Foundation
import Rswift

struct Feed: BaseNotificationContent {
  // MARK: BaseNotificationContent
  var id: UUID
  var title: String
  var description: String
  var date: Date

  var imageUrl: URL
}
