//
//  DatePickerView.swift
//  swiftuideneme
//
//  Created by Ömer Faruk Öztürk on 14.02.2023.
//

import SwiftUI

struct DatePickerView: View {
    @State var selectedDate: Date = Date()
    
    var body: some View {
        DatePicker("Select a Date", selection: $selectedDate, displayedComponents: [.date, .hourAndMinute])
            .accentColor(.purple)
            .foregroundColor(.blue)
            .datePickerStyle(.graphical)
    }
}

struct DatePickerView_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerView()
    }
}
