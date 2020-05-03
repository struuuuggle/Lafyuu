//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/03.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import Foundation

enum LaunchType {
    case login
    case register

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
