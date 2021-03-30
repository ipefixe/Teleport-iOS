//
//  CityResultView.swift
//  Teleport
//
//  Created by Kevin Boulala on 29/03/2021.
//

import SwiftUI

struct CityResultView: View {
    private let citySearchResult: CitySearchResult
    
    init(citySearchResult: CitySearchResult) {
        self.citySearchResult = citySearchResult
    }
    
    var body: some View {
        NavigationLink(destination: CityDetailsView(citySearchResult: citySearchResult)) {
            Text(citySearchResult.fullName)
                .foregroundColor(.pink)
                .shadow(color: .black, radius: 4)
        }
    }
}
