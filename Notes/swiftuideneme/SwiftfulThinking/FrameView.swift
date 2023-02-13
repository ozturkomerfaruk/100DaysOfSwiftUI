//
//  FrameView.swift
//  swiftuideneme
//
//  Created by Ömer Faruk Öztürk on 13.02.2023.
//

import SwiftUI

struct FrameView: View {
    var body: some View {
        Text("Hello, World!")
            .background(Color.orange)
            .frame(height: 100)
            .background(Color.blue)
            .frame(width: 150, height: 150)
            .background(Color.green)
            .frame(width: .infinity, height: 200, alignment: .top)
            .background(Color.red)
            .frame(width: 350, height: 700, alignment: .leading)
            //.background(Color.pink)
            //.background(LinearGradient (gradient: Gradient (colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing))
            .background(
                Circle()
                    .fill(Color.pink)
                    .overlay(Text("1")
                        .foregroundColor(Color.white)
                        .font(.system(size: 40)))
                    .background(
                       Circle()
                        .fill(Color.blue)
                        .frame(width: 30, height: 40)
                    )
            )
        
    }
}

struct FrameView_Previews: PreviewProvider {
    static var previews: some View {
        FrameView()
    }
}
