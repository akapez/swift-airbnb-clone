//
//  ImageCarouselView.swift
//  Airbnb
//
//  Created by Avishka Kapuruge on 2023-11-26.
//

import SwiftUI

struct ImageCarouselView: View {
    let listing: Listing
    
    var body: some View {
        TabView {
            ForEach(listing.imageUrls, id: \.self) { image in
                Image(image)
                    .resizable()
                    .scaledToFill()
            }
        }
            .tabViewStyle(.page)
    }
}

#Preview {
    ImageCarouselView(listing: DeveloperPreview.shared.listing[0])
}
