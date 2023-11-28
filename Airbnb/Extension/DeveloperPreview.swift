//
//  DeveloperPreview.swift
//  Airbnb
//
//  Created by Avishka Kapuruge on 2023-11-28.
//

import Foundation

class DeveloperPreview {
    static let shared = DeveloperPreview()
    var listing: [Listing] = [
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "Mark Brown",
            ownerImageUrl: "man-photo",
            numberOfBedrooms: 4,
            numberOfBathrooms: 4,
            numberOfGuests: 4,
            numberOfBeds: 4,
            pricePerNight: 567,
            latitude: 37.3387,
            longitude: 121.8853,
            imageUrls: ["lt-1", "lt-2", "lt-3", "lt-4"],
            address: "123 Main Street",
            city: "San Jose",
            state: "California",
            title: "Sweet Brown Villa",
            rating: 3.34,
            features: [.selfChekIn, .superHost],
            amenities: [.wifi, .balcony, .kitchen, .office],
            types: .villa
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "Kamal Perera",
            ownerImageUrl: "man-photo",
            numberOfBedrooms: 2,
            numberOfBathrooms: 2,
            numberOfGuests: 2,
            numberOfBeds: 2,
            pricePerNight: 324,
            latitude: 6.872916,
            longitude: 79.888634,
            imageUrls: ["lt-3", "lt-5", "lt-1", "lt-4"],
            address: "234 Park Street",
            city: "Nugegoda",
            state: "Colombo",
            title: "Leisure Spot",
            rating: 5.34,
            features: [.selfChekIn, .superHost],
            amenities: [.wifi, .pool, .kitchen, .tv, .laundary],
            types: .house
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "Ann Claudia",
            ownerImageUrl: "woman-photo",
            numberOfBedrooms: 1,
            numberOfBathrooms: 1,
            numberOfGuests: 2,
            numberOfBeds: 2,
            pricePerNight: 123,
            latitude: 37.7749,
            longitude: 122.4194,
            imageUrls: ["lt-5", "lt-6", "lt-2", "lt-4"],
            address: "1st Lane",
            city: "Nugegoda",
            state: "Colombo",
            title: "Summer Garden",
            rating: 5.34,
            features: [.selfChekIn],
            amenities: [.wifi, .pool, .kitchen, .tv, .alarmSystem],
            types: .townHouse
        )
    ]
}
