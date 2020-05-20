//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/14.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import XCTest

@testable import Dev_Lafyuu

class DateTests: XCTestCase {

  var now: Date!
  var regex: NSRegularExpression!

  override func setUpWithError() throws {
    // Put setup code here. This method is called before the invocation of each test method in the class.
    super.setUp()
    now = Date()
  }

  override func tearDownWithError() throws {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
  }

  // MARK: - Tests Date.yMMMd(local:)

  func testUs_yMMMd() throws {
    regex = try! NSRegularExpression(pattern: #"[A-Z][a-z]{2}\s\d{1,2},\s\d{1,4}"#)
    let actual = now.yMMMd(local: .us)
    XCTAssertNotNil(regex.firstMatch(in: actual, range: NSRange(actual.startIndex..., in: actual)), "actual: \(actual)")
  }

  func testJp_yMMMd() throws {
    regex = try! NSRegularExpression(pattern: #"\d{1,4}年\d{1,2}月\d{1,2}日"#)
    let actual = now.yMMMd(local: .jp)
    XCTAssertNotNil(regex.firstMatch(in: actual, range: NSRange(actual.startIndex..., in: actual)), "actual: \(actual)")
  }

  func testGb_yMMMd() throws {
    regex = try! NSRegularExpression(pattern: #"\d{1,2}\s[A-Z][a-z]{2}\s\d{1,4}"#)
    let actual = now.yMMMd(local: .gb)
    XCTAssertNotNil(regex.firstMatch(in: actual, range: NSRange(actual.startIndex..., in: actual)), "actual: \(actual)")
  }

  func testFr_yMMMd() throws {
    regex = try! NSRegularExpression(pattern: #"\d{1,2}\s[A-Z][a-z]{2}\s\d{1,4}"#)
    let actual = now.yMMMd(local: .fr)
    XCTAssertNotNil(regex.firstMatch(in: actual, range: NSRange(actual.startIndex..., in: actual)), "actual: \(actual)")
  }

  // MARK: - Tests Date.yMMMdhm12()
  func testUs_yMMMdhm12() throws {
    regex = try! NSRegularExpression(pattern: #"[A-Z][a-z]{2}\s\d{1,2},\s\d{1,4},\s\d{1,2}:\d{2}\s(AM|PM)"#)
    let actual = now.yMMMdhm12(local: .us)
    XCTAssertNotNil(regex.firstMatch(in: actual, range: NSRange(actual.startIndex..., in: actual)), "actual: \(actual)")
  }

  // MARK: - Tests Date.hm12(local:)

  func testUs_hm12() throws {
    regex = try! NSRegularExpression(pattern: #"\d{1,2}:\d{2}\s(AM|PM)"#)
    let actual = now.hm12(local: .us)
    XCTAssertNotNil(regex.firstMatch(in: actual, range: NSRange(actual.startIndex..., in: actual)), "actual: \(actual)")
  }

  func testJp_hm12() throws {
    regex = try! NSRegularExpression(pattern: #"(AM|PM)\d{1,2}:\d{2}"#)
    let actual = now.hm12(local: .jp)
    XCTAssertNotNil(regex.firstMatch(in: actual, range: NSRange(actual.startIndex..., in: actual)), "actual: \(actual)")
  }

  func testGb_hm12() throws {
    regex = try! NSRegularExpression(pattern: #"\d{1,2}:\d{2}\s(AM|PM)"#)
    let actual = now.hm12(local: .gb)
    XCTAssertNotNil(regex.firstMatch(in: actual, range: NSRange(actual.startIndex..., in: actual)), "actual: \(actual)")
  }

  func testFr_hm12() throws {
    regex = try! NSRegularExpression(pattern: #"\d{1,2}:\d{2}\s(AM|PM)"#)
    let actual = now.hm12(local: .fr)
    XCTAssertNotNil(regex.firstMatch(in: actual, range: NSRange(actual.startIndex..., in: actual)), "actual: \(actual)")
  }

  // MARK: - Tests Date.hm24(local:)

  func testUs_hm24() throws {
    regex = try! NSRegularExpression(pattern: #"\d{2}:\d{2}"#)
    let actual = now.hm24(local: .us)
    XCTAssertNotNil(regex.firstMatch(in: actual, range: NSRange(actual.startIndex..., in: actual)), "actual: \(actual)")
  }

  func testJp_hm24() throws {
    regex = try! NSRegularExpression(pattern: #"\d{2}:\d{2}"#)
    let actual = now.hm24(local: .jp)
    XCTAssertNotNil(regex.firstMatch(in: actual, range: NSRange(actual.startIndex..., in: actual)), "actual: \(actual)")
  }

  func testGb_hm24() throws {
    regex = try! NSRegularExpression(pattern: #"\d{2}:\d{2}"#)
    let actual = now.hm24(local: .gb)
    XCTAssertNotNil(regex.firstMatch(in: actual, range: NSRange(actual.startIndex..., in: actual)), "actual: \(actual)")
  }

  func testFr_hm24() throws {
    regex = try! NSRegularExpression(pattern: #"\d{2}:\d{2}"#)
    let actual = now.hm24(local: .fr)
    XCTAssertNotNil(regex.firstMatch(in: actual, range: NSRange(actual.startIndex..., in: actual)), "actual: \(actual)")
  }

  // MARK: - Tests Date.hms12(local:)

  func testUs_hms12() throws {
    regex = try! NSRegularExpression(pattern: #"\d{1,2}:\d{1,2}:\d{1,2}\s(AM|PM)"#)
    let actual = now.hms12(local: .us)
    XCTAssertNotNil(regex.firstMatch(in: actual, range: NSRange(actual.startIndex..., in: actual)), "actual: \(actual)")
  }

  func testJp_hms12() throws {
    regex = try! NSRegularExpression(pattern: #"(AM|PM)\d{1,2}:\d{1,2}:\d{1,2}"#)
    let actual = now.hms12(local: .jp)
    XCTAssertNotNil(regex.firstMatch(in: actual, range: NSRange(actual.startIndex..., in: actual)), "actual: \(actual)")
  }

  func testGb_hms12() throws {
    regex = try! NSRegularExpression(pattern: #"\d{1,2}:\d{1,2}:\d{1,2}\s(AM|PM)"#)
    let actual = now.hms12(local: .gb)
    XCTAssertNotNil(regex.firstMatch(in: actual, range: NSRange(actual.startIndex..., in: actual)), "actual: \(actual)")
  }

  func testFr_hms12() throws {
    regex = try! NSRegularExpression(pattern: #"\d{1,2}:\d{1,2}:\d{1,2}\s(AM|PM)"#)
    let actual = now.hms12(local: .fr)
    XCTAssertNotNil(regex.firstMatch(in: actual, range: NSRange(actual.startIndex..., in: actual)), "actual: \(actual)")
  }

  // MARK: - Tests Date.hms24(local:)

  func testUs_hms24() throws {
    regex = try! NSRegularExpression(pattern: #"\d{2}:\d{2}:\d{2}"#)
    let actual = now.hms24(local: .us)
    XCTAssertNotNil(regex.firstMatch(in: actual, range: NSRange(actual.startIndex..., in: actual)), "actual: \(actual)")
  }

  func testJp_hms24() throws {
    regex = try! NSRegularExpression(pattern: #"\d{2}:\d{2}:\d{2}"#)
    let actual = now.hms24(local: .jp)
    XCTAssertNotNil(regex.firstMatch(in: actual, range: NSRange(actual.startIndex..., in: actual)), "actual: \(actual)")
  }

  func testGb_hms24() throws {
    regex = try! NSRegularExpression(pattern: #"\d{2}:\d{2}:\d{2}"#)
    let actual = now.hms24(local: .gb)
    XCTAssertNotNil(regex.firstMatch(in: actual, range: NSRange(actual.startIndex..., in: actual)), "actual: \(actual)")
  }

  func testFr_hms24() throws {
    regex = try! NSRegularExpression(pattern: #"\d{2}:\d{2}:\d{2}"#)
    let actual = now.hms24(local: .fr)
    XCTAssertNotNil(regex.firstMatch(in: actual, range: NSRange(actual.startIndex..., in: actual)), "actual: \(actual)")
  }

  // MARK: - Tests Date.jpDate

  func test_jpDate() throws {
    regex = try! NSRegularExpression(pattern: #"\p{Han}+\d+年\d{1,2}月\d{1,2}日\((月|火|水|木|金|土|日)\)"#)
    let actual = now.jpDate
    XCTAssertNotNil(regex.firstMatch(in: actual, range: NSRange(actual.startIndex..., in: actual)), "actual: \(actual)")
  }

  // MARK: - Tests Date.jpDayAbbr

  func test_jpDayAbbr() throws {
    regex = try! NSRegularExpression(pattern: #"(月|火|水|木|金|土|日)"#)
    let actual = now.jpDayAbbr
    XCTAssertNotNil(regex.firstMatch(in: actual, range: NSRange(actual.startIndex..., in: actual)), "actual: \(actual)")
  }

  // MARK: - Tests Date.jpDay

  func test_jpDay() throws {
    regex = try! NSRegularExpression(pattern: #"(月|火|水|木|金|土|日)曜日"#)
    let actual = now.jpDay
    XCTAssertNotNil(regex.firstMatch(in: actual, range: NSRange(actual.startIndex..., in: actual)), "actual: \(actual)")
  }

}
