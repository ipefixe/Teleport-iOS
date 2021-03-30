//
//  CitySummariesView.swift
//  Teleport
//
//  Created by Kevin Boulala on 29/03/2021.
//

import SwiftUI

struct CitySummariesView: View {
    private let fullName: String
    private let population: Int
    private let score: Double
    private let image: UIImage?
    
    init(fullName: String, population: Int, score: Double, image: UIImage?) {
        self.fullName = fullName
        self.population = population
        self.score = score
        self.image = image
    }
    
    var body: some View {
        VStack {
            if let image = image {
                Image(uiImage: image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
            
            Text("\(fullName) (pop: \(population))")
            Text("Global score: \(String(format: "%.02f", score))/100")
                .fontWeight(.black)
                .importantStyle()
                .padding()
        }
    }
}
