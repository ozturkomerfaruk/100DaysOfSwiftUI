//
//  ContentView.swift
//  SwiftUIDenemeler
//
//  Created by Ömer Faruk Öztürk on 10.02.2023.
//

import SwiftUI

struct ContentView: View {
    @State var count = 0
    @State var name = ""
    let students = ["Harry", "Hermione", "Ron"]
    @State private var selectedStudent = "Harry"
    
    var body: some View {
        Button("Count: \(count)") {
            count += 1
        }
        
        Form {
            TextField("Enter your name", text: $name)
            Text("Hello World")
            
            Section {
                Text("Your name is: \(name)")
            }
        }
        
        NavigationView {
            Form {
                Picker("Select your student", selection: $selectedStudent) {
                    ForEach(students, id: \.self) {
                        Text($0)
                    }
                }
            }
        }
        
        Form {
            ForEach(0..<100) {
                Text("Row \($0)")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

