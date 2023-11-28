//
//  ExploreViewModel.swift
//  Airbnb
//
//  Created by Avishka Kapuruge on 2023-11-28.
//

import Foundation

class ExploreViewModel: ObservableObject {
    @Published var listing = [Listing]()
    private let service: ExploreSevice
    
    init(serice: ExploreSevice) {
        self.service = serice
        
        Task { await fetchListings() }
    }
    
    func fetchListings() async {
        do {
            self.listing = try await service.fetchListings()
        } catch {
            print("DEBUG: Failed to fetch listings with errors: \(error.localizedDescription)")
        }
    }
}
