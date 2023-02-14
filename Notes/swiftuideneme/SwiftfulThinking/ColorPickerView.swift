//
//  ColorPickerView.swift
//  swiftuideneme
//
//  Created by Ömer Faruk Öztürk on 14.02.2023.
//

import SwiftUI

struct ColorPickerView: View {
    @State var bgColor: Color = .green
    var body: some View {
        ZStack {
            bgColor.edgesIgnoringSafeArea(.all)
            
            ColorPicker("AAA", selection: $bgColor)
                .padding()
                .background(Color.black)
                .cornerRadius (10)
                .foregroundColor (.white)
                .font(.headline)
                .padding(140)
        }
    }
}

struct ColorPickerView_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerView()
    }
}
