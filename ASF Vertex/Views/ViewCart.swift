//
//  ViewCart.swift
//  ASF Vertex
//
//  Created by Andrew Anderson on 1/19/23.
//

import SwiftUI

struct ViewCart: View {
    var body: some View {
        ZStack {
            Color.red
            
            Image(systemName: "cart")
                .foregroundColor(Color.white)
                .font(.system(size: 100.0))
        }
    }
}

struct ViewCart_Previews: PreviewProvider {
    static var previews: some View {
        ViewCart()
    }
}
