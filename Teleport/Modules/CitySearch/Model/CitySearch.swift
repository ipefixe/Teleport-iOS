//
//  CitySearch.swift
//  Teleport
//
//  Created by Kevin Boulala on 28/03/2021.
//

import Foundation

struct CitySearch {
    let count: Int
    let results: [CitySearchResult]
    
    init(from data: CitySearchData) {
        count = data.count
        results = data.embedded.citySearchResults.map({ (citySearchResultData) -> CitySearchResult in
            CitySearchResult(from: citySearchResultData)
        })
    }
    
    init() {
        count = 0
        results = []
    }
}

struct CitySearchResult: Hashable {
    let fullName: String
    let urlToCityResource: String
    
    init(from data: CitySearchResultsData) {
        fullName = data.matchingFullName
        urlToCityResource = data.links.cityItem.href
    }
}
