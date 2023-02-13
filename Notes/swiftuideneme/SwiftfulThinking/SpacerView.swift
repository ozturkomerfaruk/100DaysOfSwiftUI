//
//  SpacerView.swift
//  swiftuideneme
//
//  Created by Ömer Faruk Öztürk on 13.02.2023.
//

import SwiftUI

struct SpacerView: View {
    var body: some View {
        VStack {
            Rectangle()
                .fill(Color.green)
                .frame(width: 100, height: 100)
            Rectangle()
                .fill(Color.red)
                .frame(width: 100, height: 100)
            Spacer()
                .frame(width: 20)
                .background(Color.orange)
                .cornerRadius(20)
                .padding(20)
            Rectangle()
                .fill(Color.yellow)
                .frame(width: 100, height: 100)
            Rectangle()
                .fill(Color.blue)
                .frame(width: 100, height: 100)
        }
    }
}

struct SpacerView_Previews: PreviewProvider {
    static var previews: some View {
        SpacerView()
    }
}
