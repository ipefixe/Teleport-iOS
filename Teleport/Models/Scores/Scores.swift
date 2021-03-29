//
//  Scores.swift
//  Teleport
//
//  Created by Kevin Boulala on 29/03/2021.
//

import Foundation

struct Scores {
    let categories: [ScoreCategory]
    let summary: String
    let teleportCityScore: Double
    
    init(from data: ScoresData) {
        summary = data.summary
        teleportCityScore = data.teleportCityScore
        categories = data.categories.map({ (categoryData) -> ScoreCategory in
            ScoreCategory(from: categoryData)
        })
    }
    
    init() {
        categories = []
        summary = ""
        teleportCityScore = 0
    }
}

struct ScoreCategory: Hashable {
    let color: String
    let name: String
    let scoreOutOf10: Double
    
    init(from data: CategoryData) {
        color = data.color
        name = data.name
        scoreOutOf10 = data.scoreOutOf10
    }
}
