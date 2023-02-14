//
//  TapGestureView.swift
//  swiftuideneme
//
//  Created by Ömer Faruk Öztürk on 14.02.2023.
//

import SwiftUI

struct TapGestureView: View {
    @State var chTxt = "Hello, World!"
    var body: some View {
        Text(chTxt)
            .onTapGesture(count: 2) {
                chTxt = "Hola Babe"
            }
    }
}

struct TapGestureView_Previews: PreviewProvider {
    static var previews: some View {
        TapGestureView()
    }
}
