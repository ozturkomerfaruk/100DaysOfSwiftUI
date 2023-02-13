//
//  StateHowToUseView.swift
//  swiftuideneme
//
//  Created by Ömer Faruk Öztürk on 13.02.2023.
//

import SwiftUI

struct StateHowToUseView: View {
    
    @State var backgroundColor: Color = Color.green
    @State var count: Int = 0
    
    var body: some View {
        ZStack {
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            VStack (spacing: 20) {
                Text("Title")
                    .font(.title)
                Text("Title")
                    .font(.headline)
                    .underline()
                Text("count: \(count)")
                HStack (spacing: 20) {
                    Button("Button 1") {
                        backgroundColor = .gray
                        count += 1
                    }
                    
                    Button("Button 2") {
                        backgroundColor = .yellow
                        count += 2
                    }
                }
            }
            .foregroundColor(.white)
        }
    }
}

struct StateHowToUseView_Previews: PreviewProvider {
    static var previews: some View {
        StateHowToUseView()
    }
}
