//
//  Tip.swift
//  Trekker
//
//  Created by Patricia Kinsumbya on 20/06/2023.
//

import Foundation

struct Tip: Decodable {
    let text: String
    let children: [Tip]? //array of tips and optionality with ?
    
}
