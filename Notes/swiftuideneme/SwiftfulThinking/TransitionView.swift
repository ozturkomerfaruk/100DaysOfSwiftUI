//
//  TransitionView.swift
//  swiftuideneme
//
//  Created by Ömer Faruk Öztürk on 14.02.2023.
//

import SwiftUI

struct TransitionView: View {
    @State var showView = false
    var body: some View {
        ZStack (alignment: .bottom) {
            VStack {
                Button("Button") {
                    showView.toggle()
                }
                
                Spacer()
                if showView {
                    RoundedRectangle (cornerRadius: 30)
                        .fill(.brown)
                        .frame(height: UIScreen.main.bounds.height * 0.5)
                        //.transition(.move(edge: .top))
                        //.animation(.easeInOut)
                        //.transition(AnyTransition.scale.animation (.easeInOut))
                        .transition(.asymmetric(
                            insertion: .move(edge: .leading),
                            removal: .move(edge: .top)))
                        .animation(.default)
                }
                   
            }
            .edgesIgnoringSafeArea(.bottom)
        }
    }
}

struct TransitionView_Previews: PreviewProvider {
    static var previews: some View {
        TransitionView()
    }
}
