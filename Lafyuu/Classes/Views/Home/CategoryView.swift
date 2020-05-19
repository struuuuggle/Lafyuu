//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/06.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import SwiftUI

struct CategoryView: View {

  init() {
    UITableView.appearance().separatorColor = .clear
  }

  var body: some View {
    List(Category.allCases) { category in
      CategoryListRow(category: category)
    }
    .listStyle(PlainListStyle())
    .navigationBarTitle("Category", displayMode: .inline)
  }
}

// MARK: - SubView
extension CategoryView {
  struct CategoryListRow: View {
    let category: Category

    var body: some View {
      ZStack {
        Rectangle()
          .foregroundColor(R.color.white)

        HStack(spacing: Constant.Spacing.horizontal.rawValue) {
          Image(category.imageName)
            .frame(width: Constant.Icon.Size.small, height: Constant.Icon.Size.small)
          Text(category.name)
            .kerning(0.5)
            .foregroundColor(R.color.dark)
            .font(R.font.poppinsBold, size: 12)
          Spacer()
        }
      }
      .frame(height: 48)
    }
  }
}

// MARK: - PreviewProvider
struct CategoryView_Previews: PreviewProvider {
  static var previews: some View {
    CategoryView()
  }
}
