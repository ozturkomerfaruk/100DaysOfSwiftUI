//
//  ScrollView.swift
//  swiftuideneme
//
//  Created by Ömer Faruk Öztürk on 13.02.2023.
//

import SwiftUI

struct ScrollViewView: View {
    var body: some View {
        ScrollView (.vertical) {
            VStack (alignment: .center) {
                ForEach(0..<5) { i in
                    ScrollView (.horizontal) {
                        HStack (alignment: .center) {
                            ForEach (0..<10)  { i in
                                RoundedRectangle (cornerRadius: 25.0)
                                    .fill (Color.white)
                                    .frame (width: 100, height: 75)
                                    .shadow (radius: 10)
                                    .padding(.leading, 90)
                                    .padding(.top, 40)
                                    .padding(.bottom, 40)
                            }
                        }
                    }
                }
            }
        }
    }
}

struct ScrollView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewView()
    }
}
