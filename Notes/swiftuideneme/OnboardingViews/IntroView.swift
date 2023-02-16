//
//  IntroView.swift
//  swiftuideneme
//
//  Created by Ömer Faruk Öztürk on 16.02.2023.
//

import SwiftUI

struct IntroView: View {
    
    @AppStorage("signed_id") var currentUserSignedIn: Bool = false
    
    var body: some View {
        ZStack {
            RadialGradient(
                gradient: Gradient(colors: [.green, .purple]),
                center: .center,
                startRadius: 0,
                endRadius: UIScreen.main.bounds.height)
            .ignoresSafeArea(.all)
        }
        
        if currentUserSignedIn {
            Text("Profile View")
        } 
    }
}

struct IntroView_Previews: PreviewProvider {
    static var previews: some View {
        IntroView()
    }
}
