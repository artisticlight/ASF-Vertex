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
        NavigationStack {
            Form {
                Section(header: Text("Search Type")) {
                    List(0..<numOfTypes, id:\.self) { i in
                        NavigationLink {
                            if (SearchType[i] == "Event") {
                                SearchEvent()
                            } else {
                                Text("Hello from \(SearchType[i]) search type")
                            }
                        } label: {
                            Label("\(SearchType[i])", systemImage:"circle")
                        }
                    }
                }
                Section {
                    Map(coordinateRegion: $region, showsUserLocation: true, userTrackingMode: .constant(.follow))
                }
                .frame(height: abs(500))
            }
            .navigationTitle("Vertex Search Definition")
            .navigationBarTitleDisplayMode(.large)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
    }
}

struct ViewSearch_Previews: PreviewProvider {
    static var previews: some View {
        ViewSearch()
    }
}
