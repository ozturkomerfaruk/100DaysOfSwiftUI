//
//  ContextMenuView.swift
//  swiftuideneme
//
//  Created by Ömer Faruk Öztürk on 14.02.2023.
//

import SwiftUI

struct ContextMenuView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10.0) {
            Image(systemName: "house.fill")
                .font(.title)
            Text ("Swiftful Thinking")
                .font(.headline)
            Text ("How to use Context Menu" )
                .font(.subheadline)
        }
        .foregroundColor(.white)
        .padding(30)
        .background(Color.purple).cornerRadius(30)
        .contextMenu {
            Button {
                
            } label: {
                Label("Button 1", systemImage: "flame.fill")
            }
            
            Button {
                
            } label: {
                Label("Button 2", systemImage: "ellipsis")
            }
            
            Button {
                
            } label: {
                Label("Button 3", systemImage: "heart.fill")
            }
        }
    }
}

struct ContextMenuView_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenuView()
    }
}
