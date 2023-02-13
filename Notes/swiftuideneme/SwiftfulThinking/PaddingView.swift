//
//  PaddingView.swift
//  swiftuideneme
//
//  Created by Ömer Faruk Öztürk on 13.02.2023.
//

import SwiftUI

struct PaddingView: View {
    var body: some View {
        VStack {
            Text("Hello, World!")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.bottom, 20)
            Text ("This is therdescription of what we will do on this screen. It is multiple lines and we will align the text to the leading edge.")
        }
        .padding(.horizontal, 20)
        .background(
            Color.white
                .padding(.horizontal, 20)
                .shadow(color: Color.blue, radius: 30)
        )
    }
}

struct PaddingView_Previews: PreviewProvider {
    static var previews: some View {
        PaddingView()
    }
}
