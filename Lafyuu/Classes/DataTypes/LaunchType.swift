//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/03.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import Foundation

enum LaunchType: String {
    case login = "Login"
    case register = "Register"
}

// MARK: - For Footnote at Launch Screen
extension LaunchType {
    var toggle: LaunchType {
        switch self {
        case .login:
            return .register
        case .register:
            return .login
        }
    }

    /// Returns `Register` at LoginView, `Sign In` at RegisterView
    var footnoteButonText: String {
        switch self {
        case .login:
            return "Register"
        case .register:
            return "Sign In"
        }
    }

    var footnoteLabel: String {
        switch self {
        case .login:
            return "Don't have a acount?"
        case .register:
            return "Already have a account?"
        }
    }
}

// MARK: - For LaunchHeaderView
extension LaunchType {
    var title: String {
        switch self {
        case .login:
            return "Welcome to Lafyuu"
        case .register:
            return "Create an new account"
        }
    }

    var subtitle: String {
        switch self {
        case .login:
            return "Sign in to continue"
        case .register:
            return "Create an new account"
        }
    }
}
