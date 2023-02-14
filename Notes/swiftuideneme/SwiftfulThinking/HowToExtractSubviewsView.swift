//
//  HowToExtractSubviewsView.swift
//  swiftuideneme
//
//  Created by Ömer Faruk Öztürk on 14.02.2023.
//

import SwiftUI

struct HowToExtractSubviewsView: View {
    var body: some View {
        ZStack {
            Color.orange.opacity(0.5)
                .edgesIgnoringSafeArea(.all)
            
            MyItem(title: "1",
                   subTitle: "Apple",
                   color: .pink)
        }
    }
    
    
}

struct HowToExtractSubviewsView_Previews: PreviewProvider {
    static var previews: some View {
        HowToExtractSubviewsView()
    }
}

struct MyItem: View {
    var title: String
    var subTitle: String
    var color: Color
    
    var body: some View {
        VStack {
            Text(title)
            Text(subTitle)
        }
        .padding()
        .background(Color.red)
        .cornerRadius(20)
    }
}
