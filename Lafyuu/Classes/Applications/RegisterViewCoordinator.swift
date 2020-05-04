//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/05.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import SwiftUI

final class RegisterViewCoordinator: BaseCoordinator {
  private let window: UIWindow
  private var registerView: RegisterView?
  private var loginVc: LoginViewCoordinator?

  init(window: UIWindow) {
    self.window = window
  }

  func start() {
    var view = RegisterView()
    view.delegate = self
    window.rootViewController = UIHostingController(rootView: view)
    registerView = view
  }
}

// MARK: - RegisterViewDelegate
extension RegisterViewCoordinator: RegisterViewDelegate {
  func tryToLogin() {
    let loginVc = LoginViewCoordinator(window: window)
    defer { loginVc.start() }
    self.loginVc = loginVc
  }
}
