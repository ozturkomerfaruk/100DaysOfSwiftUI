//
//  AppStorageView.swift
//  swiftuideneme
//
//  Created by Ömer Faruk Öztürk on 16.02.2023.
//

import SwiftUI

struct AppStorageView: View {
    
    @AppStorage("name") var currentUsername: String?
    
    var body: some View {
        VStack (spacing: 20) {
            Text(currentUsername ?? "nil")
            
            if let name = currentUsername {
                Text(name)
            }
            
            Button {
                let name = "Ömer"
                currentUsername = name
                UserDefaults.standard.set(name, forKey: "name")
            } label: {
                Text("button")
            }

        }
        .onAppear {
            currentUsername = UserDefaults.standard.string(forKey: "name")
        }
    }
}

struct AppStorageView_Previews: PreviewProvider {
    static var previews: some View {
        AppStorageView()
    }
}
