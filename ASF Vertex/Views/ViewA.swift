//
//  ViewA.swift
//  ASF Vertex
//
//  Created by Andrew Anderson on 1/19/23.
//

import SwiftUI

struct ViewA: View {
    var body: some View {
        ZStack {
            Color.red
            
            Image(systemName: "phone.fill")
                .foregroundColor(Color.white)
                .font(.system(size: 100.0))
        }
    }
}

struct ViewA_Previews: PreviewProvider {
    static var previews: some View {
        ViewA()
    }
}
