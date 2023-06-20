//
//  TrekkerApp.swift
//  Trekker
//
//  Created by Patricia Kinsumbya on 20/06/2023.
//

import SwiftUI


@main
struct TrekkerApp: App {
    @StateObject var locations = Locations() //makes sure objet stays alove
    
    var body: some Scene {
        WindowGroup {
            TabView {
                NavigationView{
                    ContentView(location: locations.primary) //need to create this once not several times
                }
                .navigationViewStyle(StackNavigationViewStyle())
                .padding()
                .tabItem{
                    Image(systemName: "airplane.circle.fill")
                    Text("Discover")
                }
                NavigationView{
                    WorldView()
                }
                .navigationViewStyle(StackNavigationViewStyle())
                .tabItem{
                    Image(systemName: "star.fill")
                    Text("Locations")
                }
                NavigationView{
                    TipsView()
                }
                .navigationViewStyle(StackNavigationViewStyle())
                .tabItem{
                    Image(systemName: "list.bullet")
                    Text("Tips")
                }
                
                
            }
            .environmentObject(locations) //environmentobject allows all anywhere where locations is needed to be easily read
        }
    }
}
