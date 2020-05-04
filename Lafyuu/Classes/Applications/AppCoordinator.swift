//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/04.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import SwiftUI
import UIKit

/// Use Coordinator to handle navigation flow
protocol BaseCoordinator {
  /// Switches screens by calling `start` method of its child coordinator
  func start()
}

final class AppCoordinator: BaseCoordinator {
  private let window: UIWindow
  private let rootView: LoginView
  private var loginCoordinator: LoginViewCoordinator

  init(window: UIWindow) {
    self.window = window
    rootView = .init()
    loginCoordinator = LoginViewCoordinator(window: self.window)
  }

  func start() {
    // Use a UIHostingController as window root view controller.
    window.rootViewController = UIHostingController(rootView: rootView)
    defer { window.makeKeyAndVisible() }
    loginCoordinator.start()
  }
}
