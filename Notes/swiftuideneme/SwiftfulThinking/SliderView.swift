//
//  SliderView.swift
//  swiftuideneme
//
//  Created by Ömer Faruk Öztürk on 14.02.2023.
//

import SwiftUI

struct SliderView: View {
    @State var sliderCount: Double = 0
    var body: some View {
        VStack {
            Slider(value: $sliderCount, in: 0...100, step: 1) {
                Text("val")
            } minimumValueLabel: {
                Text("0")
            } maximumValueLabel: {
                Text("100")
            }
            Text(String(format: "%.f", sliderCount))
        }

    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView()
    }
}
