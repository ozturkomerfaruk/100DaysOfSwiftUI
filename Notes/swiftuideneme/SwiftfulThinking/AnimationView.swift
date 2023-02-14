//
//  AnimationView.swift
//  swiftuideneme
//
//  Created by Ömer Faruk Öztürk on 14.02.2023.
//

import SwiftUI

struct AnimationView: View {
    @State var isRectangle = false
    let timing: Double = 5
    var body: some View {
        ZStack {
            
            VStack {
                Button("OOH YEA") {
                    isRectangle.toggle()
                }
                .padding(.top, 400)
                
                RoundedRectangle (cornerRadius: 20)
                    .frame (width: isRectangle ? 350 : 50, height: 100)
                    .animation (Animation.spring(
                        response: 3.0,
                        dampingFraction: 0.5,
                        blendDuration: 1.0)
                        .repeatForever(autoreverses: true))
                
                RoundedRectangle (cornerRadius: 20)
                    .frame (width: isRectangle ? 350 : 50, height: 100)
                    .animation (Animation.easeIn(duration: timing)
                        .repeatForever(autoreverses: true))
            }
            
            VStack {
                if isRectangle {
                    Rectangle()
                        .fill(.red)
                        .frame (width: isRectangle ? 200 : 300,
                                height: isRectangle ? 200 : 300)
                        .offset(y: isRectangle ? 20 : 30)
                        .cornerRadius(20)
                        .rotationEffect (Angle (degrees: isRectangle ? 75 : 0))
                } else {
                    Circle()
                        .fill(.yellow)
                        .frame (width: isRectangle ? 140 : 300,
                                height: isRectangle ? 140 : 300)
                        .offset(y: isRectangle ? 0 : 150)
                }
                
                Spacer()
                Button {
                    withAnimation (Animation
                        .default
                        .repeatForever(autoreverses: true)) {
                        isRectangle.toggle()
                    }
                } label: {
                    Text("Change")
                        .foregroundColor(.white)
                        .padding()
                        .padding(.horizontal, 10)
                        .background(Color.brown)
                        .cornerRadius(10)
                        
                }
                .padding(.bottom, 100)

            }
        }
    }
}

struct AnimationView_Previews: PreviewProvider {
    static var previews: some View {
        AnimationView()
    }
}
