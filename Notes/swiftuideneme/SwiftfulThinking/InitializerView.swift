//
//  InitializerView.swift
//  swiftuideneme
//
//  Created by Ömer Faruk Öztürk on 13.02.2023.
//

import SwiftUI

struct InitializerView: View {
    
    var backgroundColor: Color
    
    var body: some View {
        VStack {
            Text("5")
                .underline()
                .font(.largeTitle)
            Text("Apples")
                .font(.title2)
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .foregroundColor(.white)
        .cornerRadius(10)
    }
}

struct InitializerView_Previews: PreviewProvider {
    static var previews: some View {
        HStack {
            InitializerView(backgroundColor: .yellow)
            InitializerView(backgroundColor: .red)
        }
    }
}
