//
//  UrbanArea.swift
//  Teleport
//
//  Created by Kevin Boulala on 29/03/2021.
//

import Foundation

struct UrbanArea {
    let teleportCityURL: String
    let detailsResource: String
    let imagesResource: String
    let salariesResource: String
    let scoresResource: String
    
    init(from data: UrbanAreaData) {
        teleportCityURL = data.teleportCityURL
        detailsResource = data.links.details.href
        imagesResource = data.links.images.href
        salariesResource = data.links.salaries.href
        scoresResource = data.links.scores.href
    }
    
    init() {
        teleportCityURL = ""
        detailsResource = ""
        imagesResource = ""
        salariesResource = ""
        scoresResource = ""
    }
}
