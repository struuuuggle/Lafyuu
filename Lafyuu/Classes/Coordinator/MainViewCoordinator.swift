//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/05.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import SwiftUI

final class MainViewCoordinator: BaseCoordinator {
  private let window: UIWindow
  private var rootView: ContentView?

  init(window: UIWindow) {
    self.window = window
  }

  func start() {
    var view = ContentView()
    //    view.delegate = self
    window.rootViewController = UIHostingController(rootView: view)
    rootView = view
  }
}
