//
//  ActionSheetView.swift
//  swiftuideneme
//
//  Created by Ömer Faruk Öztürk on 14.02.2023.
//

import SwiftUI

struct ActionSheetView: View {
    
    @State var showActionSheet: Bool = false
    @State var string = "Firstly"
    
    var body: some View {
        Button(string) {
            showActionSheet.toggle()
        }
        .actionSheet(isPresented: $showActionSheet, content: getActionSheet)
    }
    
    func getActionSheet() -> ActionSheet {
        let button1: ActionSheet.Button = .default(Text("Default")) {
            string = "Default"
        }
        let button2: ActionSheet.Button = .destructive(Text("Destructive")) {
            string = "Destructive"
        }
        let button3: ActionSheet.Button = .cancel() {
            string = "Cancel"
        }
        //return ActionSheet (title: Text("This is the title!"))
        return ActionSheet(title: Text("This is the title!"),
            message: Text("messages"), buttons: [button1, button2, button3])
    }
}

struct ActionSheetView_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetView()
    }
}
