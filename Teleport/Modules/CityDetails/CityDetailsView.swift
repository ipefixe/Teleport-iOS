//
//  CityDetailsView.swift
//  Teleport
//
//  Created by Kevin Boulala on 29/03/2021.
//

import SwiftUI

struct CityDetailsView: View {
    @ObservedObject private var viewModel = CityDetailsViewModel()
    
    var body: some View {
        Text("City Details View")
            .navigationBarTitle(viewModel.city.name)
    }
}
