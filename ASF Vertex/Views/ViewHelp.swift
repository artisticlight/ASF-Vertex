//
//  ViewHelp.swift
//  ASF Vertex
//
//  Created by Andrew Anderson on 1/19/23.
//

import SwiftUI

struct ViewHelp: View {
    var body: some View {
        ZStack {
            Color.red
            
            Image(systemName: "doc.richtext")
                .foregroundColor(Color.white)
                .font(.system(size: 100.0))
        }
    }
}

struct ViewHelp_Previews: PreviewProvider {
    static var previews: some View {
        ViewHelp()
    }
}
