//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/05.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import Combine
import SwiftUI

struct FlipClock: View {
  @State private(set) var hourRemaining: TimeInterval = 8
  @State private(set) var minuteRemaining: TimeInterval = 10
  @State private(set) var secondRemaining: TimeInterval = 5
  // TODO: parse date to display timeRemaining with String format [2020/05/06]
  let expiryDate: Date?
  let timer = Timer.publish(every: 1, tolerance: 0.1, on: .main, in: .common)
  let cancellable: AnyCancellable?

  let width: CGFloat
  let height: CGFloat

  init(
    expiryDate: Date?,
    width: CGFloat = 150,
    height: CGFloat = 42
  ) {
    self.expiryDate = expiryDate
    self.width = width
    self.height = height
    self.cancellable = self.timer.connect() as? AnyCancellable
  }

  var body: some View {
    HStack(spacing: 4) {
      Panel(timeRemaining: $hourRemaining)
      separator
      Panel(timeRemaining: $minuteRemaining)
      separator
      Panel(timeRemaining: $secondRemaining)
    }
    .frame(width: width, height: height)
    .onReceive(timer) { _ in
      self.updateClock()
    }
    .onDisappear(perform: {
      self.cancellable?.cancel()
    })
  }

  // TODO: FIX [2020/05/06]
  private func updateClock() {
    if hourRemaining > 0, minuteRemaining == 0, secondRemaining == 0 {
      hourRemaining -= 1
    }

    if minuteRemaining > 0, secondRemaining == 0 {
      minuteRemaining -= 1
    } else if minuteRemaining == 0, secondRemaining == 0 {
      minuteRemaining = 59
    }

    if secondRemaining > 0 {
      secondRemaining -= 1
    } else {
      secondRemaining = 59
    }
  }
}

// MARK: - SubView
extension FlipClock {
  struct Panel: View {
    @Binding var timeRemaining: TimeInterval

    var body: some View {
      ZStack {
        bgRectangle
        Text(String(format: "%02d", Int(timeRemaining)))
          .kerning(Constant.Text.kerning)
          .font(R.font.poppinsBold, size: 16)
          .foregroundColor(R.color.dark)
      }
      .frame(width: 42, height: 42)
    }

    private var bgRectangle: some View {
      RoundedRectangle(cornerRadius: 5, style: .continuous)
        .foregroundColor(R.color.white)
    }
  }

  private var separator: some View {
    Text(":")
      .offset(y: -2)
      .foregroundColor(R.color.white)
  }
}

struct FlipClock_Previews: PreviewProvider {
  @State private(set) static var hourRemaining: TimeInterval = 8
  @State private(set) static var minuteRemaining: TimeInterval = 10
  @State private(set) static var secondRemaining: TimeInterval = 5
  static var previews: some View {
    FlipClock(expiryDate: Date())
      .background(Color(R.color.grey.name))
      .previewLayout(.fixed(width: 174, height: 60))
  }
}
