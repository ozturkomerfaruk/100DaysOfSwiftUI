//
//  SymbolsView.swift
//  swiftuideneme
//
//  Created by Ömer Faruk Öztürk on 13.02.2023.
//

import SwiftUI

struct SymbolsView: View {
    var body: some View {
        Image (systemName: "star.fill")
        //.renderingMode (.original)
            .font(.largeTitle)
        //.font (.system(size: 200))
        //.font (.largeTitle)
            .foregroundColor(.blue)
        //.resizable ()
        //.aspectRatio(contentMode:.fit)
        //.scaledToFit ()
        //.scaledToF111 ()
        //.frame (width: 300, height: 300)
        //.clipped()
    }
}

struct SymbolsView_Previews: PreviewProvider {
    static var previews: some View {
        SymbolsView()
    }
}
