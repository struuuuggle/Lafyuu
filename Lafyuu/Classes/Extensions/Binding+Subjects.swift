//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/26.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import Combine
import SwiftUI

extension Binding {
  init(from currentValueSubject: CurrentValueSubject<Value, Never>) {
    self.init(
      get: { currentValueSubject.value },
      set: { currentValueSubject.send($0) }
    )
  }
}
