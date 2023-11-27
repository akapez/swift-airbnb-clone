//
//  MainTabView.swift
//  Airbnb
//
//  Created by Avishka Kapuruge on 2023-11-27.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            ExploreView()
                .tabItem { Label("Explore", systemImage: "magnifyingglass")}
            WishlistView()
                .tabItem { Label("Wishlist", systemImage: "heart")}
            ProfileView()
                .tabItem { Label("Profile", systemImage: "person.circle")}
        }
    }
}

#Preview {
    MainTabView()
}
