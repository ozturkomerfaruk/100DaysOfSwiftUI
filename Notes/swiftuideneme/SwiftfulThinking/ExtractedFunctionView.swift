//
//  ExtractedFunctionView.swift
//  swiftuideneme
//
//  Created by Ömer Faruk Öztürk on 13.02.2023.
//

import SwiftUI

struct ExtractedFunctionView: View {
    
    @State var bgColor: Color = Color.pink
    
    var body: some View {
        ZStack {
            bgColor
                .edgesIgnoringSafeArea(.all)
         
            contentLayer
        }
    }
    
    var contentLayer: some View {
        VStack {
            Text ("Title")
                .font (.largeTitle)
            Button {
                buttonPressed()
            } label: {
                Text ("PRESS ME")
                    .font (. headline)
                    .foregroundColor(.white)
                    .padding()
                    .background (Color.black)
                    .cornerRadius (10)
            }

        }
    }
    
    func buttonPressed() {
        bgColor = .yellow
    }
}

struct ExtractedFunctionView_Previews: PreviewProvider {
    static var previews: some View {
        ExtractedFunctionView()
    }
}
