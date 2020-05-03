//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/03.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import Rswift

enum OAuthType: String {
    case google = "Google"
    case facebook
}

extension OAuthType {
    var logo: ImageResource {
        switch self {
        case .google:
            return R.image.google

        case .facebook:
            return R.image.facebook
        }
    }
}
