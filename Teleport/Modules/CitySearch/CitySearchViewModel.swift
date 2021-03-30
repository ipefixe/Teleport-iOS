//
//  CitySearchViewModel.swift
//  Teleport
//
//  Created by Kevin Boulala on 28/03/2021.
//

import Combine
import SwiftUI

class CitySearchViewModel: ObservableObject {
    
    private let url = "https://api.teleport.org/api/cities/?search="
    private var task: AnyCancellable?
    
    @Published var citySearch = CitySearch()
    @Published var isLoading = false
    
    private var citySearchData = CitySearchData() {
        didSet {
            citySearch = CitySearch(from: citySearchData)
            isLoading = false
        }
    }
    
    func search(city: String) {
        isLoading = true
        
        guard !city.isEmpty,
              let url = URL(string: url + city.trimmingCharacters(in: .whitespaces)) else {
            citySearchData = CitySearchData()
            return
        }
        
        task = URLSession.shared.dataTaskPublisher(for: url)
            .map { $0.data }
            .decode(type: CitySearchData.self, decoder: JSONDecoder())
            .replaceError(with: CitySearchData())
            .eraseToAnyPublisher()
            .receive(on: RunLoop.main)
            .assign(to: \CitySearchViewModel.citySearchData, on: self)
    }
}
