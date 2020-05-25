//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/23.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import Combine
import SwiftUI

struct PaymentAddCardView: View {

  @State private var isAlertHidden = false
  private var cardNumberText = CurrentValueSubject<String, Never>("")
  private var expirationDate = CurrentValueSubject<String, Never>("")
  private var securityCodeText = CurrentValueSubject<String, Never>("")
  private var cardHolderText = CurrentValueSubject<String, Never>("")
  private var cancellables = Set<AnyCancellable>()

  var body: some View {
    VStack(alignment: .leading, spacing: .wideVertical) {
      alertMessage(message: "Security Code is wrong")
        .hidden($isAlertHidden)

      form(
        leadingText: "Card Number",
        placeholder: "Enter Card Number",
        text: cardNumberText
      )

      HStack(spacing: .tightVertical) {
        form(
          leadingText: "Expiration Date",
          placeholder: "Expiration Date",
          text: expirationDate
        )
        form(
          leadingText: "Security Code",
          placeholder: "Security Code",
          text: securityCodeText
        )
      }

      form(
        leadingText: "Card Holder",
        placeholder: "Enter Card Number",
        text: cardHolderText
      )

      Spacer()
    }
    .lafyuuPadding()
    .onReceive(
      validator.receive(on: RunLoop.main),
      perform: ({
        self.isAlertHidden = $0
      })
    )
  }
}

// MARK: - Private properties
extension PaymentAddCardView {
  private var validator: AnyPublisher<Bool, Never> {
    Publishers.CombineLatest4(
      cardNumberText,
      expirationDate,
      securityCodeText,
      cardHolderText
    )
      .receive(on: RunLoop.main)
      .map { !$0.0.isEmpty && !$0.1.isEmpty && !$0.2.isEmpty && !$0.3.isEmpty }
      .print()
      .eraseToAnyPublisher()
  }

  private func alertMessage(message: String) -> some View {
    HStack(spacing: 8) {
      Image(R.image.alert_red)
        .resizable()
        .frame(width: Constant.Icon.Size.small, height: Constant.Icon.Size.small)
      Text(message)
        .textStyle(.alertMessage)
    }
  }

  private func form(leadingText: String, placeholder: String, text: CurrentValueSubject<String, Never>) -> some View {
    VStack(alignment: .leading, spacing: 12) {
      Text(leadingText)
        .textStyle(.heading)

      LafyuuTextField(
        placeholder: placeholder,
        text: Binding(from: text)
      )
      // TODO: highlight me when validation error [2020/05/25]
    }
  }
}

struct PaymentAddCardView_Previews: PreviewProvider {
  static var previews: some View {
    PaymentAddCardView()
      .lafyuuPadding()
  }
}
