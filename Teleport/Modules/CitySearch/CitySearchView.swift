//
//  CitySearchView.swift
//  Teleport
//
//  Created by Kevin Boulala on 28/03/2021.
//

import SwiftUI

struct CitySearchView: View {
    @ObservedObject private var viewModel = CitySearchViewModel()
    @State private var cityToSearch = ""
    
    var body: some View {
        VStack {
            TextField("Search a city 🌍", text: $cityToSearch, onCommit: {
                viewModel.search(city: cityToSearch)
            })
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .padding()
            
            Text("Result\(viewModel.citySearch.count > 1 ? "s" : ""): \(viewModel.citySearch.count)")
                .padding()
            
            List(viewModel.citySearch.results, id: \.self) {
                Text($0.fullName)
            }
            
            Spacer()
        }
        .navigationBarTitle("Teleport")
    }
}
