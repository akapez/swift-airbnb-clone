//
//  ExploreView.swift
//  Airbnb
//
//  Created by Avishka Kapuruge on 2023-11-26.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(spacing: 32) {
                    ForEach(0 ... 10, id: \.self) { listing in
                        ListingItemView()
                    }
                }
                .padding()
            }
        }
    }
}

#Preview {
    ExploreView()
}
