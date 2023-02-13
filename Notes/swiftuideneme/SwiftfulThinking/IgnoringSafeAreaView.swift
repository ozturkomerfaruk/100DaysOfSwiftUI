//
//  ignoringSafeArea.swift
//  swiftuideneme
//
//  Created by Ömer Faruk Öztürk on 13.02.2023.
//

import SwiftUI

struct IgnoringSafeAreaView: View {
    var body: some View {
        ScrollView {
            VStack {
                Text("Hello, World!")
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                ForEach(0..<20) {
                    i in
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color.red)
                        .frame(height: 150)
                        .padding(20)
                        .shadow(radius: 10)
                }
            }
        }
        .background(Color.green)
        .edgesIgnoringSafeArea(.all)
    }
       
}
        
struct IgnoringSafeAreaView_Previews: PreviewProvider {
    static var previews: some View {
        IgnoringSafeAreaView()
    }
}
