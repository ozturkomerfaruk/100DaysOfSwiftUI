//
//  TextFieldView.swift
//  swiftuideneme
//
//  Created by Ömer Faruk Öztürk on 14.02.2023.
//

import SwiftUI

struct TextFieldView: View {
    
    @State var textFieldString = ""
    @State var dataArray = [String]()
    
    var body: some View {
        NavigationView {
            VStack {
                TextField("Type..", text: $textFieldString)
                    .padding()
                    .background(Color.gray.opacity(0.3).cornerRadius(30))
                    .foregroundColor(.red)
                    .font(.headline)
                
                Button {
                    saveText()
                } label: {
                    Text("Save".uppercased())
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(30)
                }
                
                List {
                    ForEach(dataArray, id: \.self) {
                        arr in
                        Text(arr)
                    }
                }
                
                Spacer()
            }
            .padding(.horizontal, 10)
        }
    }
    
    func saveText() {
        if !textFieldString.isEmpty {
            dataArray.append(textFieldString)
        } else {
            dataArray.append("Empty String")
        }
        textFieldString = ""
    }
}

struct TextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldView()
    }
}
