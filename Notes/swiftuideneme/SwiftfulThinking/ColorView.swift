//
//  ColorView.swift
//  swiftuideneme
//
//  Created by Ömer Faruk Öztürk on 13.02.2023.
//

import SwiftUI

struct ColorView: View {
    var body: some View {
        VStack {
            RoundedRectangle (cornerRadius: 25.0)
                .fill (
                    //Color primary
                    //Color(.red))
                    //.linearGradient(Gradient(colors: [.red, .blue]), startPoint: .leading, endPoint: .trailing)
                    //.radialGradient(Gradient(colors: [.red, .black]), center: .center, startRadius: 5, endRadius: 200)
                    .angularGradient(Gradient(colors: [.white, .green]), center: .center, startAngle: .degrees(10), endAngle: .degrees(40))
                    )
                .frame (width: 300, height: 200)
                .shadow(color: .black.opacity(1), radius: 20.0, x: -20, y: -20)
        }
    }
}

struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ColorView()
    }
}
