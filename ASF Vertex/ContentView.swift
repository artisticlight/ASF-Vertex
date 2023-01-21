//
//  ContentView.swift
//  ASF Vertex
//
//  Created by Andrew Anderson on 1/19/23.
//

import SwiftUI

enum Tabs: String {
    case search
    case results
    case downloads
    case help
    case profile
}

struct ContentView: View {
    
    @State var selectedTab: Tabs = .search
    
    var body: some View {
            TabView(selection: $selectedTab) {
                ViewSearch()
                    .tabItem {
                        Image(systemName: "magnifyingglass.circle")
                        Text("Search")
                    }
                    .tag(Tabs.search)
                
                ViewResults()
                    .tabItem {
                        Image(systemName: "square.3.layers.3d")
                        Text("Results")
                    }
                    .tag(Tabs.results)
                
                ViewCart()
                    .tabItem {
                        Image(systemName: "cart")
                        Text("Downloads")
                    }
                    .tag(Tabs.downloads)
                
                ViewHelp()
                    .tabItem {
                        Image(systemName: "doc.richtext")
                        Text("Help")
                    }
                    .tag(Tabs.help)
                
                ViewProfile()
                    .tabItem() {
                        Image(systemName: "person")
                        Text("Profile")
                    }
                    .tag(Tabs.profile)
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
