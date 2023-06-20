//
//  ContentView.swift
//  Trekker
//
//  Created by Patricia Kinsumbya on 20/06/2023.
//

import SwiftUI

struct ContentView: View {
    //@StateObject var locations = Locations()
    var location: Location
    var body: some View {
        //let location = locations.primary
        ScrollView { //ensures data is vertically stacked. one after the other
            Image(location.heroPicture)
                .resizable() //streches out image. modifier on its own line
                .scaledToFit()// fits image correctly to screen same aspectRatio
            Text(location.name)
                .font(.largeTitle) //dynamic setting makes size auto sized based on screen
                .bold()
                .multilineTextAlignment(.center)//control multiple lines of alignment
            Text(location.country)
                .font(.title)
                .foregroundColor(.secondary)
                .bold()
            
            Text(location.description)
                .padding()
            
            Text("Did you know")
                .font(.title)
                .bold()
            
            Text(location.more)
                .padding()
        }
        .navigationTitle("Discover")
    }
}

struct ContentView_Previews: PreviewProvider { //helps xcode undertand view locally
    static var previews: some View {
        NavigationView {
            ContentView(location: Locations().primary)
                .environmentObject(Locations())
        }
    }
}

/*struct ContentView_Previews: PreviewProvider { //helps xcode undertand view locally
    static var previews: some View {
        NavigationView {
            ContentView(location: Locations().primary)
        }
    }
}*/



