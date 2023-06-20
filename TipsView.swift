//
//  TipsView.swift
//  Trekker
//
//  Created by Patricia Kinsumbya on 20/06/2023.
//

import SwiftUI

struct TipsView: View {
    let tips: [Tip]
    
    init() {
        let url = Bundle.main.url(forResource: "tips", withExtension: "json")! // creates constant value url points to location of locations
        let data = try! Data(contentsOf: url)
        tips = try! JSONDecoder().decode([Tip].self, from: data)//converst json to swift types = JSONdecoder
    }
    
    var body: some View {
        //.text) - keypath ==> read text properyt from each proepry and make that as the unique identifier
        List(tips, id: \.text, children: \.children) {tip in
            if tip.children != nil { //check that is there are children of tip, show else
                Label(tip.text, systemImage: "quite.bubble")
                    .font(.headline)
            } else {
                Text(tip.text)
            }
        }
        .navigationTitle("Tips")
    }
}

struct TipsView_Previews: PreviewProvider {
    static var previews: some View {
        TipsView()
    }
}
