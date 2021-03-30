//
//  CityDetailsView.swift
//  Teleport
//
//  Created by Kevin Boulala on 29/03/2021.
//

import SwiftUI

struct CityDetailsView: View {
    @ObservedObject private var viewModel = CityDetailsViewModel()
    
    init(citySearchResult: CitySearchResult) {
        viewModel.fetchCityDetails(from: citySearchResult.cityResource)
    }
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.gray, .black]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            
            if viewModel.city.fullName.isEmpty {
                NoDetailView()
            } else {
                ListScoresView(viewModel: viewModel)
            }
        }
    }
}
