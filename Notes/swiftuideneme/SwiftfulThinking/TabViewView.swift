//
//  TabViewView.swift
//  swiftuideneme
//
//  Created by Ömer Faruk Öztürk on 14.02.2023.
//

import SwiftUI

struct TabViewView: View {
    @State var selectedTab: Int = 2
    
    var body: some View {
        TabView (selection: $selectedTab) {
            Text("First")
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }.tag(1)
            Button(action: {
                selectedTab = 1
            }, label: {
                Text("Go to Home")
            })
                .tabItem {
                    Image(systemName: "globe")
                    Text("Globe")
                }.tag(2)
        }
        //.tabViewStyle(DefaultTabViewStyle())
        .tabViewStyle(PageTabViewStyle())
        .background(LinearGradient(colors: [.red, .yellow], startPoint: .bottom, endPoint: .top))
    }
}

struct TabViewView_Previews: PreviewProvider {
    static var previews: some View {
        TabViewView()
            
            
    }
}
