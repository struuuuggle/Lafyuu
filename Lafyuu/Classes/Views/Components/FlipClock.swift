//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/05.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import Combine
import SwiftUI

struct FlipClock: View {
  @Binding var hourRemaining: TimeInterval
  @Binding var minuteRemaining: TimeInterval
  @Binding var secondRemaining: TimeInterval
  let timer: Publishers.Autoconnect<Timer.TimerPublisher>

  let width: CGFloat
  let height: CGFloat

  init(
    hourRemaining: Binding<TimeInterval>,
    minuteRemaining: Binding<TimeInterval>,
    secondRemaining: Binding<TimeInterval>,
    width: CGFloat = 150,
    height: CGFloat = 42
  ) {
    self._hourRemaining = hourRemaining
    self._minuteRemaining = minuteRemaining
    self._secondRemaining = secondRemaining
    self.width = width
    self.height = height
    timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
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
  }

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
        Text(String(format: "%02d", timeRemaining))
          .kerning(0.5)
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
  static var previews: some View {
    FlipClock(
      hourRemaining: .constant(8),
      minuteRemaining: .constant(10),
      secondRemaining: .constant(5)
    )
      .background(Color(R.color.grey.name))
      .previewLayout(.fixed(width: 174, height: 60))
  }
}
