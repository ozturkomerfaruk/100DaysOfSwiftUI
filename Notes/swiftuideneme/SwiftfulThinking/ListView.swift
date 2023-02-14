//
//  ListView.swift
//  swiftuideneme
//
//  Created by Ömer Faruk Öztürk on 14.02.2023.
//

import SwiftUI

struct ListView: View {
    
    @State var fruits = ["apple", "orange", "banana", "peach"]
    @State var veggies = ["tomotoes", "patatoes", "carrot", "peach"]
    
    var body: some View {
        NavigationView {
            List {
                Section(header:
                            HStack {
                    Text("Fruits")
                    Image(systemName: "flame.fill")
                }
                    .font(.title2)
                    .foregroundColor(.orange)) {
                    ForEach(fruits, id: \.self) {
                        val in
                        Text(val)
                    }
                    .onDelete(perform: delete)
                    .onMove(perform: move)
                }
                Section(header: Text("Fruits")) {
                    ForEach(fruits, id: \.self) {
                        val in
                        Text(val)
                    }
                    .onDelete(perform: delete)
                    .onMove(perform: move)
                }
            }
            //.listStyle(GroupedListStyle())
            //.listStyle(InsetListStyle())
            //.listStyle(PlainListStyle())
            .listStyle(SidebarListStyle())
            .navigationTitle("Nav Title")
            .navigationBarItems(
                leading: EditButton(),
                trailing: addButton)
        }
        .accentColor(.green)
    }
    func delete(index: IndexSet) {
        fruits.remove(atOffsets: index)
    }
    
    func move(indices: IndexSet, newOffset: Int) {
        fruits.move(fromOffsets: indices, toOffset: newOffset)
    }
    
    var addButton: some View {
        Button("Add") {
            fruits.append("fruit")
        }
    }
    
    struct ListView_Previews: PreviewProvider {
        static var previews: some View {
            ListView()
        }
    }
}
