//
//  ConditionalStatementView.swift
//  swiftuideneme
//
//  Created by Ömer Faruk Öztürk on 14.02.2023.
//

import SwiftUI

struct ConditionalStatementView: View {
    @State var isRectangle: Bool = false
    var body: some View {
        VStack {
            if isRectangle {
                Rectangle()
                    .changeColorShape()
            } else {
                Circle()
                    .changeColorShape()
            }
            
            Spacer()
            Button {
                isRectangle = !isRectangle
            } label: {
                Text("Change")
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal, 10)
                    .background(Color.brown)
                    .cornerRadius(10)
                    
            }
            .padding(.bottom, 100)

        }
    }
}

struct ConditionalStatementView_Previews: PreviewProvider {
    static var previews: some View {
        ConditionalStatementView()
    }
}

extension Rectangle {
    func changeColorShape () -> some View {
        self
            .fill(.blue)
            .frame (width: 300, height: 200)
            .cornerRadius(20)
    }
}

extension Circle {
    func changeColorShape () -> some View {
        self
            .fill(.blue)
            .frame (width: 300, height: 200)
    }
}

