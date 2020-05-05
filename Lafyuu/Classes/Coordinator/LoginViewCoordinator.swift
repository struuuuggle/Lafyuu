//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/04.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import SwiftUI

final class LoginViewCoordinator: BaseCoordinator {
  private let window: UIWindow
  private var rootView: LoginView?
  private var registerVc: RegisterViewCoordinator?
  private var mainVc: MainViewCoordinator?

  init(window: UIWindow) {
    self.window = window
  }

  func start() {
    var view = LoginView()
    view.delegate = self
    window.rootViewController = UIHostingController(rootView: view)
    rootView = view
  }
}

// MARK: - LoginViewDelegate
extension LoginViewCoordinator: LoginViewDelegate {
  func login() {
    let mainVc = MainViewCoordinator(window: window)
    defer { mainVc.start() }
    self.mainVc = mainVc
  }

  func tryToRegtister() {
    let registerVc = RegisterViewCoordinator(window: window)
    defer { registerVc.start() }
    self.registerVc = registerVc
  }
}
