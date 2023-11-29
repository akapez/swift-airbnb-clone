//
//  ExploreViewModel.swift
//  Airbnb
//
//  Created by Avishka Kapuruge on 2023-11-28.
//

import Foundation

class ExploreViewModel: ObservableObject {
    @Published var listing = [Listing]()
    @Published var searchLocation = ""
    private let service: ExploreSevice
    private var listingCopy = [Listing]()
    
    
    init(serice: ExploreSevice) {
        self.service = serice
        
        Task { await fetchListings() }
    }
    
    //MARK: data fecthing func
    func fetchListings() async {
        do {
            self.listing = try await service.fetchListings()
            self.listingCopy  = listing
        } catch {
            print("DEBUG: Failed to fetch listings with errors: \(error.localizedDescription)")
        }
    }
    
    //MARK: search func
    func updateListingsForLocation() {
        let filteredListings = listing.filter({
            $0.city.lowercased() == searchLocation.lowercased() ||
            $0.state.lowercased() == searchLocation.lowercased()
        })
        
        self.listing = filteredListings.isEmpty ? listingCopy : filteredListings
    }
}
