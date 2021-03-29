//
//  CitySearchData.swift
//  Teleport
//
//  Created by Kevin Boulala on 28/03/2021.
//

import Foundation

// MARK: - CitiesSearchData
struct CitySearchData: Codable {
    let embedded: EmbeddedData
    let count: Int
    
    enum CodingKeys: String, CodingKey {
        case embedded = "_embedded"
        case count
    }
    
    init() {
        count = 0
        embedded = EmbeddedData(citySearchResults: [])
    }
}

// MARK: - EmbeddedData
struct EmbeddedData: Codable {
    let citySearchResults: [CitySearchResultsData]
    
    enum CodingKeys: String, CodingKey {
        case citySearchResults = "city:search-results"
    }
}

// MARK: - CitySearchResultsData
struct CitySearchResultsData: Codable {
    let links: CitySearchResultLinksData
    let matchingFullName: String
    
    enum CodingKeys: String, CodingKey {
        case links = "_links"
        case matchingFullName = "matching_full_name"
    }
}

// MARK: - CitySearchResultLinksData
struct CitySearchResultLinksData: Codable {
    let cityItem: LinkData
    
    enum CodingKeys: String, CodingKey {
        case cityItem = "city:item"
    }
}
