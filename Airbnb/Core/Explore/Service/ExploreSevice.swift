//
//  ExploreSevice.swift
//  Airbnb
//
//  Created by Avishka Kapuruge on 2023-11-28.
//

import Foundation

class ExploreSevice {
    func fetchListings() async throws -> [Listing] {
        return DeveloperPreview.shared.listing
    }
}
