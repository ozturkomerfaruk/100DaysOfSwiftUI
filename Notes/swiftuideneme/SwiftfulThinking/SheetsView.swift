//
//  SheetsView.swift
//  swiftuideneme
//
//  Created by Ömer Faruk Öztürk on 14.02.2023.
//

import SwiftUI

struct SheetsView: View {
    @State var showSheet = false
    var body: some View {
        ZStack {
            Color.green.edgesIgnoringSafeArea(.all)
            Button (action: {
                showSheet.toggle()
            }, label: {
                Text("Button")
                    .foregroundColor(Color.green)
                    .font (.headline)
                    .padding (20)
                    .background (Color.white.cornerRadius (10))
            })
//            MARK: Method 1
//            .sheet(isPresented: $showSheet) {
//                SecondView()
//            }
//            MARK: Method 2
//            ZStack {
//                if showSheet {
//                    SecondView(showNewScreen: $showSheet)
//                        .padding(.top, 100)
//                        .transition(.asymmetric(
//                            insertion: .move(edge: .leading),
//                            removal: .move(edge: .trailing)))
//                        .animation(.spring())
//                }
//            }
//            MARK: Method 3
            ZStack {
                SecondView(showNewScreen: $showSheet)
                    .offset(y: showSheet ? 0 : UIScreen.main.bounds.height * 0.5)
                    .animation(.spring())
            }
        }
        .background(Color.brown)
    }
    
    struct SheetsView_Previews: PreviewProvider {
        static var previews: some View {
            SheetsView()
        }
    }
}


struct SecondView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @Binding var showNewScreen: Bool
    
    var body: some View {
        ZStack (alignment: .topTrailing) {
            Color.red.edgesIgnoringSafeArea(.all)
            
            Button (action: {
                presentationMode.wrappedValue.dismiss()
                self.showNewScreen.toggle()
            }, label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .padding(15)
                    .font(.largeTitle)
                    .background(Circle()
                        .stroke (Color.white))
            })
            .padding(.all, 30)
        }
        .zIndex(2)
    }
}
