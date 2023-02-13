//
//  ForeachView.swift
//  swiftuideneme
//
//  Created by Ömer Faruk Öztürk on 13.02.2023.
//

import SwiftUI

struct ForeachView: View {
    let data = ["one", "two", "three", "four"]
    var body: some View {
        VStack {
            ForEach(data.indices) { i in
                Text("\(data[i])")
            }
        }
    }
}

struct ForeachView_Previews: PreviewProvider {
    static var previews: some View {
        ForeachView()
    }
}
