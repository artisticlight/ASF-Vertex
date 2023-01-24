//
//  ViewSearch.swift
//  ASF Vertex
//
//  Created by Andrew Anderson on 1/19/23.
//

import MapKit
import SwiftUI

struct ViewSearch: View {
    @State public var SearchType: [String] =
        ["Geographic",
        "List",
        "Event"]
        
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 51.507222, longitude: -0.1275), span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))

    var body: some View {
        let numOfTypes: Int = SearchType.count
        ZStack {
            Color.blue
            NavigationStack {
                Form {
                    Section {
                        List(0..<numOfTypes, id:\.self) { i in
                            NavigationLink {
                                Text("Hello (searchType)")
                            } label: {
                                Label("hello \(SearchType[i])", systemImage:"circle")
                            }
                        }
                    }
                    Section {
                            Map(coordinateRegion: $region, showsUserLocation: true, userTrackingMode: .constant(.follow))
                    }
                    .frame(width: .infinity, height: 500)
                }
                .navigationTitle("Search")
                .navigationBarTitleDisplayMode(.large)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.blue)
            }

        }
    }
}

struct ViewSearch_Previews: PreviewProvider {
    static var previews: some View {
        ViewSearch()
    }
}
