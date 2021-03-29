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
        
    init(fullName: String, population: Int, score: Double) {
        self.fullName = fullName
        self.population = population
        self.score = score
    }
    
    var body: some View {
        VStack {
            Text("\(fullName) (pop: \(population))")
            Text("Global score: \(String(format: "%.02f", score))/100")
                .fontWeight(.black)
                .padding()
        }
    }
}
