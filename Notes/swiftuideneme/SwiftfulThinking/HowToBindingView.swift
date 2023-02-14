//
//  HowToBindingView.swift
//  swiftuideneme
//
//  Created by Ömer Faruk Öztürk on 14.02.2023.
//

import SwiftUI

struct HowToBindingView: View {
    @State var bgColor: Color = Color.green
    var body: some View {
        ZStack {
            bgColor.edgesIgnoringSafeArea(.all)
            
            CustomButtonView(bgColor: $bgColor)

        }
    }
}

struct HowToBindingView_Previews: PreviewProvider {
    static var previews: some View {
        HowToBindingView()
    }
}


struct CustomButtonView: View {
    @Binding var bgColor: Color
    
    var body: some View {
        Button {
            bgColor = Color.red.opacity(0.3)
        } label: {
            Text("Button")
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal, 10)
                .background(Color.blue)
                .cornerRadius(10)
        }
    }
}
