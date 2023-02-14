//
//  PickerView.swift
//  swiftuideneme
//
//  Created by Ömer Faruk Öztürk on 14.02.2023.
//

import SwiftUI

struct PickerView: View {
    
    @State var selection: String = ""
    
    var body: some View {
        Picker("Age", selection: $selection) {
            ForEach (18..<23) { number in
                Text ("\(number)")
                    .font (.headline)
                    .foregroundColor (.red)
                .tag("\(number)")
            }
        }
        .pickerStyle(.segmented)
    }
}

struct PickerView_Previews: PreviewProvider {
    static var previews: some View {
        PickerView()
    }
}
