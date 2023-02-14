//
//  NavigationView.swift
//  swiftuideneme
//
//  Created by Ömer Faruk Öztürk on 14.02.2023.
//

import SwiftUI

struct NavigationViewView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                NavigationLink("Other Screen") {
                    OtherScreen()
                }
                Text("Hello, World!")
                Text("Hello, World!")
            }
            .navigationBarTitleDisplayMode(.automatic)
            .navigationTitle("Title")
            //.navigationBarHidden(true)
            //.navigationBarItems(
            //    leading: Image(systemName: "person.fill"),
            //trailing: Image(systemName: "xmark")
            //)
            
        }
    }
}

struct NavigationView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewView()
    }
}

struct OtherScreen: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ZStack {
            Color.green.edgesIgnoringSafeArea(.all)
                .navigationTitle("Other Screen")
                .navigationBarItems(trailing: Button("Back", action: {
                    presentationMode.wrappedValue.dismiss()
                }))
            NavigationLink("3rd Screen") {
                Text("Other Bro")
            }
            
        }
    }
}
