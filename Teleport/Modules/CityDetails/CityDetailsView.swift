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
        CitySummariesView(fullName: viewModel.city.fullName, population: viewModel.city.population, score: viewModel.scores.teleportCityScore)
        List(viewModel.scores.categories, id: \.self) {
            ScoreView(score: $0)
        }
        .navigationBarTitle(viewModel.city.name)
    }
}
