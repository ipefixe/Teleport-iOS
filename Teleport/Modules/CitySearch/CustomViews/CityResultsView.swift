//
//  CityResultsView.swift
//  Teleport
//
//  Created by Kevin Boulala on 30/03/2021.
//

import SwiftUI

struct CityResultsView: View {
    private let cityResults: [CitySearchResult]
    
    init(cityResults: [CitySearchResult]) {
        self.cityResults = cityResults
    }
    
    var body: some View {
        List {
            ForEach(cityResults, id: \.self) {
                CityResultView(citySearchResult: $0)
            }
            .listRowBackground(Color.clear)
        }
    }
}
