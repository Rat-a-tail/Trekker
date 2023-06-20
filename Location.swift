//
//  Location.swift
//  Trekker
//
//  Created by Patricia Kinsumbya on 20/06/2023.
//

import Foundation
//creaete custom data structure to hold all the information

//can;t be referenced
struct Location: Decodable, Identifiable { //creating custom data structure about what each object has
    let id: Int
    let name: String
    let country: String
    let description: String
    let more: String
    let latitude: Double
    let longitude: Double
    let heroPicture: String
    let advisory: String
    
    static let example = Location(id: 1, name: "Great Smokey Mountains", country: "United States", description: "A great place to visit", more: "More text here", latitude: 35.6532, longitude: -83.5070, heroPicture: "smokies", advisory: "Beware of the bears!") // this is meant to be created once rather than have object created multiple times which makes the data way too large
}

