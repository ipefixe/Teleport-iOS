//
//  ListScoresView.swift
//  Teleport
//
//  Created by Kevin Boulala on 30/03/2021.
//

import SwiftUI

struct ListScoresView: View {
    @ObservedObject private var viewModel = CityDetailsViewModel()
    
    init(viewModel: CityDetailsViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        VStack {
            CitySummariesView(fullName: viewModel.city.fullName, population: viewModel.city.population, score: viewModel.scores.teleportCityScore)
            List {
                ForEach(viewModel.scores.categories, id: \.self) {
                    ScoreView(score: $0)
                }
                .listRowBackground(Color.clear)
            }
        }
        .navigationBarTitle(viewModel.city.name)
    }
}
