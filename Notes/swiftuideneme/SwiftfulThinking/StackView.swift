//
//  StackView.swift
//  swiftuideneme
//
//  Created by Ömer Faruk Öztürk on 13.02.2023.
//

import SwiftUI

struct StackView: View {
    var body: some View {
        ZStack (alignment: .center) {
            Rectangle ()
                .fill (Color.red)
                .frame (width: 300, height: 500)
            VStack {
                Text("Ömer")
                    .underline(color: Color.green)
                Rectangle ()
                    .fill (Color.black)
                    .frame (width: 50, height: 50)
                Rectangle ()
                    .fill (Color.blue)
                    .frame (width: 100, height: 100)
                HStack {
                    Rectangle ()
                        .fill (Color.orange)
                        .frame (width: 50, height: 50)
                    Rectangle ()
                        .fill (Color.green)
                        .frame (width: 100, height: 100)
                }
                .background(Color.purple)
            }
            .background(Color.white)
        }
    }
}
struct StackView_Previews: PreviewProvider {
    static var previews: some View {
        StackView()
    }
}
