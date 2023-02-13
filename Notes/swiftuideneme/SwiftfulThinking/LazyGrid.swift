//
//  LazyGrid.swift
//  swiftuideneme
//
//  Created by Ömer Faruk Öztürk on 13.02.2023.
//

import SwiftUI

struct LazyGrid: View {
    
    let columns: [GridItem] = [
        GridItem(.fixed(25), spacing: nil, alignment: nil),
        GridItem(.fixed(50), spacing: nil, alignment: nil),
        GridItem(.fixed(75), spacing: nil, alignment: nil),
        GridItem(.fixed(75), spacing: nil, alignment: nil),
        GridItem(.fixed(50), spacing: nil, alignment: nil),
        GridItem(.fixed(25), spacing: nil, alignment: nil)
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid (columns: columns) {
                ForEach(1..<101) {
                    i in
                    Circle()
                }
            }
        }
    }
}

struct LazyGrid_Previews: PreviewProvider {
    static var previews: some View {
        LazyGrid()
    }
}
