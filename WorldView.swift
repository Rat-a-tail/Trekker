//
//  WorldView.swift
//  Trekker
//
//  Created by Patricia Kinsumbya on 20/06/2023.
//

import MapKit
import SwiftUI
//property wrapper:allows advanced functionality

struct WorldView: View {
    @EnvironmentObject var locations: Locations
    @State var region = MKCoordinateRegion(
        center:
            CLLocationCoordinate2D(
                latitude: 44.4583,
                longitude: 93.1616),
        span: MKCoordinateSpan(latitudeDelta: 40, longitudeDelta: 40)
    )
    var body: some View {
        //$//going to add two way binding s reading and writing can be done for this variable
        Map(coordinateRegion: $region, annotationItems:  locations.places) {
            location in
            MapAnnotation(coordinate:
                            CLLocationCoordinate2D( latitude: location.latitude, longitude: location.longitude)) {
                NavigationLink(destination: ContentView(location: location)) {
                    Image(location.country)
                        .resizable()
                        .cornerRadius(10) //makes it rounded
                        .frame(width: 60, height: 40)
                        .shadow(radius: 3)
                }
            }
        }
        //add some items that we need to drawm for every drawn locations
            .navigationTitle("Locations")
    }
}

struct WorldView_Previews: PreviewProvider {
    static var previews: some View {
        WorldView()
    }
}
