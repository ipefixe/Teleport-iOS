//
//  CityData.swift
//  Teleport
//
//  Created by Kevin Boulala on 29/03/2021.
//

import Foundation

// MARK: - City
struct CityData: Codable {
    let links: CityLinksData
    let fullName: String
    let name: String
    let population: Int
    let geonameID: Int

    enum CodingKeys: String, CodingKey {
        case links = "_links"
        case fullName = "full_name"
        case name
        case population
        case geonameID = "geoname_id"
    }
    
    init() {
        links = CityLinksData(cityUrbanArea: LinkData(href: ""))
        fullName = ""
        name = ""
        population = 0
        geonameID = 0
    }
}

// MARK: - CityLinksData
struct CityLinksData: Codable {
    let cityUrbanArea: LinkData

    enum CodingKeys: String, CodingKey {
        case cityUrbanArea = "city:urban_area"
    }
}
