//
//  ContentView.swift
//  SwiftUIDenemeler
//
//  Created by Ömer Faruk Öztürk on 10.02.2023.
//

import SwiftUI

struct ModifiedSection : ViewModifier {
    func body(content: Content) -> some View {
        content
            .listRowBackground(LinearGradient(gradient: Gradient(colors: [Color(red: 240/255, green: 240/255, blue: 240/255), Color(red: 50/255, green: 0/255, blue: 30/255, opacity: 0.7)]), startPoint: .leading, endPoint: .trailing))
    }
}
extension View {
    func coloredSection() -> some View {
        self.modifier(ModifiedSection())
    }
}

struct ContentView: View {
    @FocusState private var amountIsFocused: Bool
    @State private var checkAmount = 0.0
    @State private var numberOfPeople = 2
    @State private var tipPercentage = 20
    
    let tipPercentages = [10, 15, 20, 25, 0]
    
    var totalPerPerson: Double {
        let peopleCount = Double(numberOfPeople + 2)
        let tipSelection = Double(tipPercentage)
        let tipValue = checkAmount / 100 * tipSelection
        let grandTotal = checkAmount + tipValue
        let amountPerPerson = grandTotal / peopleCount
        
        return amountPerPerson
    }
    
    var peopleCount: Double {
        return Double(Int(numberOfPeople) )
    }
    
    var grndd: Double {
        return totalPerPerson / peopleCount
    }
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Header")) {
                    TextField("Amount", value: $checkAmount, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                        .keyboardType(.decimalPad)
                        .focused($amountIsFocused)
                }.coloredSection()
                
                Picker("Number of people", selection: $numberOfPeople) {
                    ForEach(2 ..< 100) {
                        Text("\($0) people")
                    }
                }.coloredSection()
                
                Section {
                    Text("How much tip do you want to leave?")
                    
                    Picker("Tip percentage", selection: $tipPercentage) {
                        ForEach(tipPercentages, id: \.self) {
                            Text($0, format: .percent)
                        }
                    }
                    .pickerStyle(.segmented)
                    .coloredSection()
                } header: {
                    Text("How much tip do you want to leave?")
                }.coloredSection()
                
                
                Section {
                    Text(totalPerPerson, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                }
                .coloredSection()
            }
            .navigationTitle("Amount per person")
            .toolbar {
                ToolbarItemGroup(placement: .keyboard) {
                    Button("Done") {
                        amountIsFocused = false
                    }
                }
            }.coloredSection()
            
            Section(header: Text("Amount per person")) {
                Text("$\(grndd, specifier: "%.2f")")
            }
            .coloredSection()
            .textCase(nil)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

