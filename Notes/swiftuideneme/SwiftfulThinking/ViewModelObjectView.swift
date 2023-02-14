//
//  ViewModelObjectView.swift
//  swiftuideneme
//
//  Created by Ömer Faruk Öztürk on 14.02.2023.
//

import SwiftUI

struct FruitModel: Identifiable {
    let id: String = UUID().uuidString
    let name: String
    let count: Int
}

struct ViewModelObjectView: View {
    @ObservedObject var fruitsViewModel = FruitsViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach (fruitsViewModel.fruitArray) { fruit in
                    HStack {
                        Text("\(fruit .count)")
                            .foregroundColor (.red)
                        Text(fruit.name)
                    }
                }
                .onDelete(perform: fruitsViewModel.deleteFruit)
            }
            .onAppear {
                fruitsViewModel.getFruits()
            }
        }
    }

    struct ViewModelObjectView_Previews: PreviewProvider {
        static var previews: some View {
            ViewModelObjectView()
        }
    }
}


class FruitsViewModel: ObservableObject {
    @Published var fruitArray: [FruitModel] = [
        FruitModel(name: "Apples", count: 5)
    ]
    
    func getFruits() {
        let fruit1 = FruitModel (name: "Orange", count: 1)
        let fruit2 = FruitModel (name: "Banana", count: 2)
        let fruit3 = FruitModel (name: "Watermelon", count: 88)
        
        fruitArray.append(fruit1)
        fruitArray.append(fruit2)
        fruitArray.append(fruit3)
    }
    
    func deleteFruit(index: IndexSet) {
        fruitArray.remove(atOffsets: index)
    }
}
