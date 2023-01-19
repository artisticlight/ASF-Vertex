//
//  ViewProfile.swift
//  ASF Vertex
//
//  Created by Andrew Anderson on 1/19/23.
//

import SwiftUI

struct ViewProfile: View {
    var body: some View {
        ZStack {
            Color.red
            
            Image(systemName: "person")
                .foregroundColor(Color.white)
                .font(.system(size: 100.0))
        }
    }
}

struct ViewProfile_Previews: PreviewProvider {
    static var previews: some View {
        ViewProfile()
    }
}
