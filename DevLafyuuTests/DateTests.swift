//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/14.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import XCTest

@testable import Dev_Lafyuu

class DateTests: XCTestCase {

  var now: Date!
  var localIdentifier: Date.LocaleIdentifier!
  var regex: NSRegularExpression!

  override func setUpWithError() throws {
    // Put setup code here. This method is called before the invocation of each test method in the class.
    super.setUp()
    now = Date()
    localIdentifier = Date.LocaleIdentifier.jp
    regex = try! NSRegularExpression(pattern: #"\d{4}年\d{1,2}月\d{1,2}日"#)
  }

  override func tearDownWithError() throws {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
  }

  func testyMMMd() throws {
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    let actual = now.yMMMd(local: localIdentifier)
    XCTAssertNotNil(regex.firstMatch(in: actual, range: NSRange(actual.startIndex..., in: actual)), "Invalid pattern found in yMMMd(local:)")
  }

  //    func testPerformanceExample() throws {
  //        // This is an example of a performance test case.
  //        measure {
  //            // Put the code you want to measure the time of here.
  //        }
  //    }
}
