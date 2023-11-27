//
//  ProfileOptionRawView.swift
//  Airbnb
//
//  Created by Avishka Kapuruge on 2023-11-27.
//

import SwiftUI

struct ProfileOptionRawView: View {
    let imageName: String
    let title: String
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: imageName)
                Text(title)
                    .font(.subheadline)
                Spacer()
                Image(systemName: "chevron.right")
            }
            Divider()
        }
    }
}

#Preview {
    ProfileOptionRawView(imageName: "gear", title: "Settings")
}
