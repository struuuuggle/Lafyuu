//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/09.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import Foundation

extension Date {

  enum LocaleIdentifier: String {
    case jp = "ja_JP"
    case us = "en_US"
    case gb = "en_GB"
    case fr = "fr_FR"
  }

  enum Template: String {
    case date = "yMMMd"
    case datehm12 = "yMMMd hm"
    case hm12 = "hm"
    case hm24 = "Hm"
    case hms12 = "hms"
    case hms24 = "Hms"
    case jpDate = "GydMMMEEE"
    case jpDayAbbr = "EEE"
    case jpDay = "EEEE"
  }

  /// Returns a localized string representation of a given date.(e.g. May 9, 2020")
  ///
  ///     let now = Date()
  ///     now // May 9, 2020 at 10:15 PM
  ///     now.yMMMd(local: .us) // May 9, 2020
  ///     now.yMMMd(local: .jp) // 2020年5月9日
  ///     now.yMMMd(local: .gb) // 9 May 2020
  ///     now.yMMMd(local: .fr) // 9 May 2020
  ///
  /// - Parameters:
  ///   - identifier: An enum case which specifies the date locale identifier (such as "jp" or "us"), "jp" by default.
  /// - Returns: A localized string representation of a given date.
  func yMMMd(local identifier: LocaleIdentifier = .jp) -> String {
    let df = DateFormatter()

    df.dateFormat = DateFormatter.dateFormat(
      fromTemplate: Template.date.rawValue,
      options: 0,
      locale: Locale(identifier: identifier.rawValue)
    )

    return df.string(from: self)
  }

  /// Returns a localized string representation of a given date.(e.g. May 9, 2020 1:03 PM")
  ///
  ///     let now = Date()
  ///     now.yMMMdhm12(local: .us) // May 9, 2020 1:03 PM"
  ///
  /// - Parameters:
  ///   - identifier: An enum case which specifies the date locale identifier (such as "jp" or "us"), "jp" by default.
  /// - Returns: A localized string representation of a given date.
  func yMMMdhm12(local identifier: LocaleIdentifier = .jp) -> String {
    let df = DateFormatter()

    df.dateFormat = DateFormatter.dateFormat(
      fromTemplate: Template.datehm12.rawValue,
      options: 0,
      locale: Locale(identifier: identifier.rawValue)
    )

    return df.string(from: self)
  }

  /// Returns a string representation of 12h notation.(e.g. "00:44 AM")
  ///
  ///     let now = Date()
  ///     now.hm12 // "00:44 AM"
  func hm12(local identifier: LocaleIdentifier) -> String {
    let df = DateFormatter()

    df.dateFormat = DateFormatter.dateFormat(
      fromTemplate: Template.hm12.rawValue,
      options: 0,
      locale: Locale(identifier: identifier.rawValue)
    )

    return df.string(from: self)
  }

  /// Returns a string representation of 24h notation.(e.g. "23:44")
  ///
  ///     let now = Date()
  ///     now.hm24 // "23:44"
  func hm24(local identifier: LocaleIdentifier) -> String {
    let df = DateFormatter()

    df.dateFormat = DateFormatter.dateFormat(
      fromTemplate: Template.hm24.rawValue,
      options: 0,
      locale: Locale(identifier: identifier.rawValue)
    )

    return df.string(from: self)
  }

  /// Returns a localized string representation of a given date.(e.g. "11:44:30 PM")
  ///
  ///     let now = Date()
  ///     now.hms12 // "11:44:30 PM"
  func hms12(local identifier: LocaleIdentifier) -> String {
    let df = DateFormatter()

    df.dateFormat = DateFormatter.dateFormat(
      fromTemplate: Template.hms12.rawValue,
      options: 0,
      locale: Locale(identifier: identifier.rawValue)
    )

    return df.string(from: self)
  }

  /// Returns a localized string representation of a given date.(e.g. "23:44:30")
  ///
  ///     let now = Date()
  ///     now.hms24 // "23:44:30"
  func hms24(local identifier: LocaleIdentifier) -> String {
    let df = DateFormatter()

    df.dateFormat = DateFormatter.dateFormat(
      fromTemplate: Template.hms24.rawValue,
      options: 0,
      locale: Locale(identifier: identifier.rawValue)
    )

    return df.string(from: self)
  }

  /// 和暦表示 (例: 令和2年5月10日(日))
  ///
  ///     let now = Date()
  ///     now.jpDate //令和2年5月10日(日)
  var jpDate: String {
    let df = DateFormatter()

    df.locale = Locale(identifier: LocaleIdentifier.jp.rawValue)
    df.calendar = Calendar(identifier: .japanese)
    df.dateFormat = DateFormatter.dateFormat(
      fromTemplate: Template.jpDate.rawValue,
      options: 0,
      locale: Locale(identifier: LocaleIdentifier.jp.rawValue)
    )

    return df.string(from: self)
  }

  /// 曜日(一文字表記) (例: 火)
  ///
  ///     let now = Date()
  ///     now.jpDateAbbr // 火
  var jpDayAbbr: String {
    let df = DateFormatter()

    df.locale = Locale(identifier: LocaleIdentifier.jp.rawValue)
    df.calendar = Calendar(identifier: .japanese)
    df.dateFormat = DateFormatter.dateFormat(
      fromTemplate: Template.jpDayAbbr.rawValue,
      options: 0,
      locale: Locale(identifier: LocaleIdentifier.jp.rawValue)
    )

    return df.string(from: self)
  }

  /// 曜日 (例: 火曜日)
  ///
  ///     let now = Date()
  ///     now.jpDateAbbr // 火曜日
  var jpDay: String {
    let df = DateFormatter()

    df.locale = Locale(identifier: LocaleIdentifier.jp.rawValue)
    df.calendar = Calendar(identifier: .japanese)
    df.dateFormat = DateFormatter.dateFormat(
      fromTemplate: Template.jpDay.rawValue,
      options: 0,
      locale: Locale(identifier: LocaleIdentifier.jp.rawValue)
    )

    return df.string(from: self)
  }
}
