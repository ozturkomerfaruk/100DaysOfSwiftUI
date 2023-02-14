//
//  TextEditorView.swift
//  swiftuideneme
//
//  Created by Ömer Faruk Öztürk on 14.02.2023.
//

import SwiftUI

struct TextEditorView: View {
    @State var textEditorString = "..."
    @State var buttonSave = ""
    
    var body: some View {
        NavigationView {
            VStack {
                TextEditor(text: $textEditorString)
                    .frame(height: 400)
                    .cornerRadius(20)
                    .colorMultiply(.blue.opacity(0.8))
                Button {
                    buttonSave = textEditorString
                } label: {
                    Text ("Save".uppercased())
                        .font(.headline)
                        .foregroundColor (.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color .green)
                        .cornerRadius(20)
                }
                Text(buttonSave)
                    .font(.title2)
                    .foregroundColor(.white)
                Spacer()
                
            }
            .padding(.horizontal, 20)
            .background(Color.red)
        }
    }
}

struct TextEditorView_Previews: PreviewProvider {
    static var previews: some View {
        TextEditorView()
    }
}
