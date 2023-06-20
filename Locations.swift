//
//  Locations.swift
//  Trekker
//
//  Created by Patricia Kinsumbya on 20/06/2023.
//

import Foundation

class Locations: ObservableObject { //references information and can be shared 
    let places: [Location]
    
    var primary: Location {
        places[0]
    }
    
    init() {
        let url = Bundle.main.url(forResource: "locations", withExtension: "json")! // creates constant value url points to location of locations
        let data = try! Data(contentsOf: url)
        places = try! JSONDecoder().decode([Location].self, from: data)//converst json to swift types = JSONdecoder
    }
    
}

//swift can't make code to make class hence the need for initialisers


