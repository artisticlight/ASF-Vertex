//
//  ViewResults.swift
//  ASF Vertex
//
//  Created by Andrew Anderson on 1/19/23.
//

import SwiftUI

struct ViewResults: View {
    var body: some View {
        ZStack {
            Color.red
            
            Image(systemName: "square.3.layers.3d")
                .foregroundColor(Color.white)
                .font(.system(size: 100.0))
        }

    }
}

struct ViewResults_Previews: PreviewProvider {
    static var previews: some View {
        ViewResults()
    }
}
