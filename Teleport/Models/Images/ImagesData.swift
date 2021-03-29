//
//  ImagesData.swift
//  Teleport
//
//  Created by Kevin Boulala on 29/03/2021.
//

import Foundation

// MARK: - ImagesData
struct ImagesData: Codable {
    let photos: [PhotoData]

    enum CodingKeys: String, CodingKey {
        case photos
    }
    
    init() {
        photos = []
    }
}

// MARK: - PhotoData
struct PhotoData: Codable {
    let image: ImageData
}

// MARK: - ImageData
struct ImageData: Codable {
    let mobile, web: String
}
