//
//  UrbanAreaData.swift
//  Teleport
//
//  Created by Kevin Boulala on 29/03/2021.
//

import Foundation

// MARK: - UrbanAreaData
struct UrbanAreaData: Codable {
    let links: UrbanAreaLinksData
    let teleportCityURL: String

    enum CodingKeys: String, CodingKey {
        case links = "_links"
        case teleportCityURL = "teleport_city_url"
    }
    
    init() {
        links = UrbanAreaLinksData(details: LinkData(href: ""),
                                   images: LinkData(href: ""),
                                   salaries: LinkData(href: ""),
                                   scores: LinkData(href: ""))
        teleportCityURL = ""
    }
}

// MARK: - UrbanAreaLinksData
struct UrbanAreaLinksData: Codable {
    let details, images, salaries, scores: LinkData

    enum CodingKeys: String, CodingKey {
        case details = "ua:details"
        case images = "ua:images"
        case salaries = "ua:salaries"
        case scores = "ua:scores"
    }
}
