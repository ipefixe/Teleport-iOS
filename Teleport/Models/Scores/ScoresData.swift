//
//  ScoresData.swift
//  Teleport
//
//  Created by Kevin Boulala on 29/03/2021.
//

import Foundation

// MARK: - ScoresData
struct ScoresData: Codable {
    let categories: [CategoryData]
    let summary: String
    let teleportCityScore: Double

    enum CodingKeys: String, CodingKey {
        case categories
        case summary
        case teleportCityScore = "teleport_city_score"
    }
    
    init() {
        categories = []
        summary = ""
        teleportCityScore = 0
    }
}

// MARK: - CategoryData
struct CategoryData: Codable {
    let color: String
    let name: String
    let scoreOutOf10: Double

    enum CodingKeys: String, CodingKey {
        case color
        case name
        case scoreOutOf10 = "score_out_of_10"
    }
}
