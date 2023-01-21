//
//  ViewSearch.swift
//  ASF Vertex
//
//  Created by Andrew Anderson on 1/19/23.
//

import MapKit
import SwiftUI

struct ViewSearch: View {
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 51.507222, longitude: -0.1275), span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))
    
    var body: some View {
        Form {
            Section {
                Text("Event Search")
            }
            Section {
                ZStack {
                    Map(coordinateRegion: $region, showsUserLocation: true, userTrackingMode: .constant(.follow))
                }
            }
            .frame(width: .infinity, height: 500)
        }
    }
}


struct ViewSearch_Previews: PreviewProvider {
    static var previews: some View {
        ViewSearch()
    }
}
