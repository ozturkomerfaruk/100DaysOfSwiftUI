//
//  OnAppearOnDisappearView.swift
//  swiftuideneme
//
//  Created by Ömer Faruk Öztürk on 14.02.2023.
//

import SwiftUI

struct OnAppearOnDisappearView: View {
    @State var changeTxt = "Hello, World!"
    var body: some View {
        NavigationView {
            VStack {
                Text(changeTxt)
                    .onAppear {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                            changeTxt = "Changed"
                    }
                    
                }
                NavigationLink {
                    Text("Hello")
                } label: {
                    Text("Hello")
                }
            }
           

        }
    }
}

struct OnAppearOnDisappearView_Previews: PreviewProvider {
    static var previews: some View {
        OnAppearOnDisappearView()
    }
}
