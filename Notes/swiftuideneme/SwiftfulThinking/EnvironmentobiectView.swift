//
//  EnvironmentobiectView.swift
//  swiftuideneme
//
//  Created by Ömer Faruk Öztürk on 14.02.2023.
//

import SwiftUI

struct EnvironmentobiectView: View {
    
    @ObservedObject var viewModel = EnviromentalViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.dataArray, id: \.self) {
                    i in
                    NavigationLink(
                        destination: DetailView(selectedItem: i, viewModel: viewModel),
                        label: {
                            Text(i)
                        })
                }
            }
        }
        .environmentObject(viewModel)
    }
}

struct EnvironmentobiectView_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentobiectView()
    }
}

class EnviromentalViewModel: ObservableObject {
    @Published var dataArray: [String] = []
    
    init() {
        getData()
    }
    
    func getData() {
        dataArray.append(contentsOf: ["iPhone", "iMac", "iPod", "iWatch"])
    }
}

struct DetailView: View {
    let selectedItem: String
    @ObservedObject var viewModel: EnviromentalViewModel
    
    var body: some View {
        ZStack {
            Color.orange.ignoresSafeArea(.all)
            Text(selectedItem)
                .font(.largeTitle)
            NavigationLink {
                FinalView()
            } label: {
                Text("Final View")
                    .foregroundColor(.white)
                    .bold()
                    .font(.largeTitle)
            }
            .padding(.top, 100)
            
        }
    }
}

struct FinalView: View {
    @EnvironmentObject var viewModel: EnviromentalViewModel
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [.black, .green, .white], startPoint: .leading, endPoint: .trailing).ignoresSafeArea(.all)
            ScrollView {
                VStack (spacing: 20) {
                    ForEach (viewModel.dataArray, id: \.self) { item in
                        Text (item)
                            .foregroundColor (.white)
                            .font(.largeTitle)
                        
                    }
                }
            }
        }
    }
}
