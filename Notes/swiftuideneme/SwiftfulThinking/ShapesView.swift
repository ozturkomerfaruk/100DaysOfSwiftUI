//
//  ContentView.swift
//  swiftuideneme
//
//  Created by Ömer Faruk Öztürk on 13.02.2023.
//

import SwiftUI

struct ShapesView: View {
    @State private var presentAlert = false
    @State private var changeTxt: String = "Hello, World!"
    
    @State private var username: String = ""
    @FocusState private var emailFieldIsFocused: Bool 

    
    
    var body: some View {
        VStack {
            
            TextField(
                    "User name (email address)",
                    text: $username
                )
                .focused($emailFieldIsFocused)
                .onSubmit {
                    
                }
                .textInputAutocapitalization(.never)
                .disableAutocorrection(true)
                .border(.secondary)

                Text(username)
                    .foregroundColor(emailFieldIsFocused ? .red : .blue)

            
            VStack {
                Button("Alert") {
                    // 2
                    presentAlert = true
                    
                    changeTxt = "asd"
                }
                .alert(isPresented: $presentAlert) {
                    Alert(
                        title: Text("Are you sure you want to delete this?"),
                        message: Text("There is no undo"),
                        primaryButton: .destructive(Text("Delete")) {
                            print("Deleting...")
                        },
                        secondaryButton: .cancel()
                    )
                }
            }
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            
            Divider()
//            Circle()
//                .stroke(Color.red, style: StrokeStyle(lineWidth: 20, lineCap: .butt, dash: [20]))
            //Rectangle ()
            RoundedRectangle(cornerRadius: 10)
            //.fill (Color .green)
            //.foregroundColor (pink)
            //.stroke ()
            //.stroke (Color.red) //.stroke(Color.blue, lineWidth: 30)
            //.stroke(Color.orange, style: StrokeStyle(lineWidth: 30, lineCap: .round, dash: [30]))
            //.trim(from: 0.3, to: 1)
            //.stroke (Color.purple, lineWidth: 50)
            .frame (width: 300, height: 200)
            
        }
        .padding()
    }
}

struct ShapesView_Previews: PreviewProvider {
    static var previews: some View {
        ShapesView()
    }
}
