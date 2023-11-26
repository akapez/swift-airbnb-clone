//
//  ImageCarouselView.swift
//  Airbnb
//
//  Created by Avishka Kapuruge on 2023-11-26.
//

import SwiftUI

struct ImageCarouselView: View {
    
    var images = [
        "lt-1",
        "lt-2",
        "lt-3",
        "lt-4",
    ]
    
    var body: some View {
        TabView {
            ForEach(images, id: \.self) { image in
                Image(image)
                    .resizable()
                    .scaledToFill()
            }
        }
            .tabViewStyle(.page)
    }
}

#Preview {
    ImageCarouselView()
}
