//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/17.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import SwiftUI

struct TextView: UIViewRepresentable {
  let placeholder: String
  @Binding private(set) var text: String

  func makeCoordinator() -> Coordinator {
    Coordinator(self, placeholder: placeholder)
  }

  func makeUIView(context: Context) -> UITextView {
    let textView: UITextView = {
      let textView = UITextView()
      textView.delegate = context.coordinator
      textView.isScrollEnabled = true
      textView.isEditable = true
      textView.isUserInteractionEnabled = true
      textView.textContainerInset = .init(top: 16, left: 16, bottom: 16, right: 16)
      textView.sizeToFit()
      textView.tintColor = R.color.blue()

      textView.attributedText = NSAttributedString(
        string: text.isEmpty ? placeholder : text,
        attributes: [
          .kern: 0.5,
          .paragraphStyle: NSMutableParagraphStyle.lafyuu,
          .font: R.font.poppinsRegular(size: 12)!,
          .foregroundColor: R.color.grey()!
      ])

      return textView
    }()

    return textView
  }

  func updateUIView(_ uiView: UITextView, context: Context) {
    uiView.text = text
  }
}

extension TextView {
  class Coordinator: NSObject, UITextViewDelegate {
    private let textView: TextView
    private let placeholder: String

    init(_ textView: TextView, placeholder: String) {
      self.textView = textView
      self.placeholder = placeholder
    }

    func textViewDidBeginEditing(_ textView: UITextView) {
      if textView.attributedText.string.isEmpty || textView.attributedText.string == placeholder {
        textView.attributedText = NSAttributedString(
          string: "", // FIXME: The font won't be bold unless you set non-empty string.
          attributes: [
            .kern: 0.5,
            .paragraphStyle: NSMutableParagraphStyle.lafyuu,
            .font: R.font.poppinsBold(size: 12)!,
            .foregroundColor: R.color.grey()!
        ])
      }
    }

    func textViewDidChange(_ textView: UITextView) {
      self.textView.text = textView.attributedText.string
    }
  }
}

private extension NSMutableParagraphStyle {
  static var lafyuu: NSMutableParagraphStyle {
    let paragraphStyle = NSMutableParagraphStyle()
    paragraphStyle.lineHeightMultiple = 1.2
    return paragraphStyle
  }
}

struct TextView_Previews: PreviewProvider {
  @State static private var text: String = ""
  static var previews: some View {
    TextView(placeholder: "Write Your Review", text: $text)
      .roundCorner(with: R.color.dark)
      .padding(16)
  }
}
