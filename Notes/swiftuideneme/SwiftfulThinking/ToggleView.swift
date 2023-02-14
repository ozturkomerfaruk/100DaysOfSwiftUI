//
//  ToggleView.swift
//  swiftuideneme
//
//  Created by Ömer Faruk Öztürk on 14.02.2023.
//

import SwiftUI

struct ToggleView: View {
    @State var toggleIsOn = false
    var body: some View {
        HStack {
            Toggle("Status: \(toggleIsOn ? "Online" : "Offline")", isOn: $toggleIsOn)
                .padding(.horizontal, 50)
                .toggleStyle(SwitchToggleStyle(tint: .purple))
        }
        .font(.title)
        .padding(20)
    }
}

struct ToggleView_Previews: PreviewProvider {
    static var previews: some View {
        ToggleView()
    }
}
