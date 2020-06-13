//
//  Created by Mikiya Abe(@struuuuggle) on 2020/06/13.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import Foundation

struct Profile: Codable {
  var fullName: String
  var accountName: String
  var profileImagePath: String?
  var gender: Gender?
  var birthDay: Date?
  var email: String?
  var phoneNumber: String?
}

enum Gender: String, Codable {
  case male = "Male"
  case female = "Female"
  case other = "Other"
}
