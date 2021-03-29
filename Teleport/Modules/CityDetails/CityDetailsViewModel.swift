//
//  CityDetailsViewModel.swift
//  Teleport
//
//  Created by Kevin Boulala on 29/03/2021.
//

import Combine
import SwiftUI

class CityDetailsViewModel: ObservableObject {

    private var task: AnyCancellable?

    @Published var city = City()
    private var cityData = CityData() {
        didSet {
            city = City(from: cityData)
            fetchUrbanArea(from: city.urbanAreaResource)
        }
    }
    
    @Published var urbanArea = UrbanArea()
    private var urbanAreaData = UrbanAreaData() {
        didSet {
            urbanArea = UrbanArea(from: urbanAreaData)
            fetchImages(from: urbanArea.imagesResource)
        }
    }
    
    @Published var images = Images()
    private var imagesData = ImagesData() {
        didSet {
            images = Images(from: imagesData)
            fetchScores(from: urbanArea.scoresResource)
        }
    }
    
    @Published var scores = Scores()
    private var scoresData = ScoresData() {
        didSet {
            scores = Scores(from: scoresData)
        }
    }
    
    func fetchCityDetails(from cityResource: String) {
        guard let url = URL(string: cityResource) else { return }

        task = URLSession.shared.dataTaskPublisher(for: url)
            .map { $0.data }
            .decode(type: CityData.self, decoder: JSONDecoder())
            .replaceError(with: CityData())
            .eraseToAnyPublisher()
            .receive(on: RunLoop.main)
            .assign(to: \CityDetailsViewModel.cityData, on: self)
    }
    
    private func fetchUrbanArea(from urbanAreaResource: String) {
        guard let url = URL(string: urbanAreaResource) else { return }

        task = URLSession.shared.dataTaskPublisher(for: url)
            .map { $0.data }
            .decode(type: UrbanAreaData.self, decoder: JSONDecoder())
            .replaceError(with: UrbanAreaData())
            .eraseToAnyPublisher()
            .receive(on: RunLoop.main)
            .assign(to: \CityDetailsViewModel.urbanAreaData, on: self)
    }
    
    private func fetchImages(from imagesResource: String) {
        guard let url = URL(string: imagesResource) else { return }

        task = URLSession.shared.dataTaskPublisher(for: url)
            .map { $0.data }
            .decode(type: ImagesData.self, decoder: JSONDecoder())
            .replaceError(with: ImagesData())
            .eraseToAnyPublisher()
            .receive(on: RunLoop.main)
            .assign(to: \CityDetailsViewModel.imagesData, on: self)
    }
    
    private func fetchScores(from scoresResource: String) {
        guard let url = URL(string: scoresResource) else { return }

        task = URLSession.shared.dataTaskPublisher(for: url)
            .map { $0.data }
            .decode(type: ScoresData.self, decoder: JSONDecoder())
            .replaceError(with: ScoresData())
            .eraseToAnyPublisher()
            .receive(on: RunLoop.main)
            .assign(to: \CityDetailsViewModel.scoresData, on: self)
    }
}
