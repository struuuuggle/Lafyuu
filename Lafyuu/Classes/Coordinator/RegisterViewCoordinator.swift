//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/05.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import SwiftUI

final class RegisterViewCoordinator: BaseCoordinator {
  private let window: UIWindow
  private var registerView: RegisterView?
  private var loginVc: LoginViewCoordinator?
  private var mainVc: MainViewCoordinator?

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
  func signUp() {
    let mainVc = MainViewCoordinator(window: window)
    defer { mainVc.start() }
    self.mainVc = mainVc
  }

  func tryToLogin() {
    let loginVc = LoginViewCoordinator(window: window)
    defer { loginVc.start() }
    self.loginVc = loginVc
  }
}
