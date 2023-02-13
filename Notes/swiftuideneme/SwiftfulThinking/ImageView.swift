//
//  ImageView.swift
//  swiftuideneme
//
//  Created by Ömer Faruk Öztürk on 13.02.2023.
//

import SwiftUI

struct ImageView: View {
    var body: some View {
        Image("omer")
            .resizable()
        //.aspectRatio(contentMode: .fit)
            .scaledToFit()
        //.scaledToFill()
            .foregroundColor(.black)
            .frame(width: 300, height: 500)
        //.clipped()
        //.cornerRadius(30)
            .clipShape(Circle())
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView()
    }
}
