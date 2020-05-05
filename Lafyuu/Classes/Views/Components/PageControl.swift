//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/05.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import SwiftUI
import UIKit

struct PageControl: UIViewRepresentable {
  var numberOfPages: Int
  @Binding var currentPage: Int
  let width: CGFloat
  let height: CGFloat

  init(
    numberOfPages: Int,
    currentPage: Binding<Int>,
    width: CGFloat = 72,
    height: CGFloat = 8
  ) {
    self.numberOfPages = numberOfPages
    self._currentPage = currentPage
    self.width = width
    self.height = height
  }

  func makeCoordinator() -> Coordinator {
    Coordinator(self)
  }

  func makeUIView(context: Context) -> UIPageControl {
    let control: UIPageControl = {
      let control = UIPageControl()

      control.currentPageIndicatorTintColor = R.color.blue()
      control.pageIndicatorTintColor = R.color.light()
      control.numberOfPages = numberOfPages

      control.addTarget(
        context.coordinator,
        action: #selector(Coordinator.updateCurrentPage(sender:)),
        for: .valueChanged
      )

      control.translatesAutoresizingMaskIntoConstraints = false
      control.heightAnchor.constraint(equalToConstant: 8).isActive = true

      return control
    }()

    return control
  }

  func updateUIView(_ uiView: UIPageControl, context: Context) {
    uiView.currentPage = currentPage
  }
}

extension PageControl {
  class Coordinator: NSObject {
    var control: PageControl

    init(_ control: PageControl) {
      self.control = control
    }

    @objc func updateCurrentPage(sender: UIPageControl) {
      control.currentPage = sender.currentPage
    }
  }
}

struct PageControl_Previews: PreviewProvider {
  static var previews: some View {
    PageControl(numberOfPages: 3, currentPage: .constant(1))
      .previewLayout(.fixed(width: 200, height: 64))
      .background(Color.black)
  }
}
