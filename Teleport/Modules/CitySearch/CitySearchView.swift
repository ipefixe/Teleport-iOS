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
    
    init() {
        UITableView.appearance().backgroundColor = .clear
        UITableViewCell.appearance().backgroundColor = .clear
    }
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.gray, .black]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                TextField("Search a city 🌍", text: $cityToSearch, onCommit: {
                    viewModel.search(city: cityToSearch)
                })
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
                
                if viewModel.isLoading {
                    LoadingResultView()
                } else {
                    if viewModel.citySearch.count > 0 {
                        CityResultsView(cityResults: viewModel.citySearch.results)
                    } else {
                        NoResultView()
                    }
                }
                
                Spacer()
            }
            .navigationBarTitle("Teleport")
        }
    }
}
