//
//  ContentView.swift
//  ASF Vertex
//
//  Created by Andrew Anderson on 1/19/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ViewSearch()
                .tabItem() {
                    Image(systemName: "magnifyingglass.circle")
                    Text("Search")
                }
            ViewResults()
                .tabItem() {
                    Image(systemName: "square.3.layers.3d")
                    Text("Results")
                }
            ViewCart()
                .tabItem() {
                    Image(systemName: "cart")
                    Text("Downloads")
                }
            ViewHelp()
                .tabItem() {
                    Image(systemName: "doc.richtext")
                    Text("Help")
                }
            ViewProfile()
                .tabItem() {
                    Image(systemName: "person")
                    Text("Profile")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
