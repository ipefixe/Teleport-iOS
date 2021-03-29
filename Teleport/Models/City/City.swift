//
//  City.swift
//  Teleport
//
//  Created by Kevin Boulala on 29/03/2021.
//

import Foundation

struct City {
    let fullName: String
    let name: String
    let population: Int
    let geonameID: Int
    let urbanAreaResource: String
    
    init(from data: CityData) {
        fullName = data.fullName
        name = data.name
        population = data.population
        geonameID = data.geonameID
        urbanAreaResource = data.links.cityUrbanArea.href
    }
    
    init() {
        fullName = ""
        name = ""
        population = 0
        geonameID = 0
        urbanAreaResource = ""
    }
}
