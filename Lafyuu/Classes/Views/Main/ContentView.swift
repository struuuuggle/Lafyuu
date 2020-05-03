//
//  Created by Mikiya Abe on 2020/05/02.
//  Copyright © 2020 Mikiya Abe. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 0

    var body: some View {
        TabView(selection: $selection) {
            HomeView()
                .tabItem {
                    VStack {
                        Image(R.image.home)
                        Text("Home")
                            .font(R.font.poppinsRegular, size: 10.0)
                    }
                    .accentColor(R.color.blue)
            }
            .tag(0)
            ExploreView()
                .tabItem {
                    VStack {
                        Image(R.image.search)
                        Text("Explore")
                            .font(R.font.poppinsRegular, size: 10.0)
                    }
                    .accentColor(R.color.blue)
            }
            .tag(1)
            CartView()
                .tabItem {
                    VStack {
                        Image(R.image.cart)
                        Text("Cart")
                            .font(R.font.poppinsRegular, size: 10.0)
                    }
                    .accentColor(R.color.blue)
            }
            .tag(2)
            OfferView()
                .tabItem {
                    VStack {
                        Image(R.image.offer)
                        Text("Offer")
                            .font(R.font.poppinsRegular, size: 10.0)
                    }
                    .accentColor(R.color.blue)
            }
            .tag(3)
            AccountView()
                .tabItem {
                    VStack {
                        Image(R.image.user)
                        Text("Account")
                            .font(R.font.poppinsRegular, size: 10.0)
                    }
                    .accentColor(R.color.blue)
            }
            .tag(4)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
