//
//  ButtonView.swift
//  swiftuideneme
//
//  Created by Ömer Faruk Öztürk on 13.02.2023.
//

import SwiftUI

struct ButtonView: View {
    
    @State var title: String = "This is my title"
    
    var body: some View {
        VStack {
            Text(title)
            
            Button("Press me") {
                self.title = "Button was pressed"
            }
            .accentColor(.green)
            
            Button(action: {
                self.title = "Button #2 was pressed"
            }, label: {
                Text ("Save" .uppercased () )
                    .font (. headline)
                    .fontWeight(.semibold)
                    .foregroundColor (.white)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(Color.blue
                        .shadow(radius: 90))
                    .cornerRadius(20)
                    
            })

            Button {
                self.title = "Button #3 was pressed"
            } label: {
                Circle()
                    .fill(.white)
                    .frame(width: 70, height: 70)
                    .shadow(radius: 10)
                    .overlay(
                    Image(systemName: "heart.fill")
                        .font(.largeTitle)
                        .foregroundColor(.red))
            }

            Button {
                
            } label: {
                Text("Save")
                    .font(.caption)
                    .bold()
                    .foregroundColor(.gray)
                    .padding()
                    .background(Capsule()
                        .stroke(Color.gray, lineWidth: 3))
            }

        }
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView()
    }
}
