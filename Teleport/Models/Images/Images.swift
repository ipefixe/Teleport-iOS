//
//  Images.swift
//  Teleport
//
//  Created by Kevin Boulala on 29/03/2021.
//

import Foundation

struct Images {
    let mobile: String?
    let web: String?
    
    init(from data: ImagesData) {
        mobile = data.photos.first?.image.mobile
        web = data.photos.first?.image.web
    }
    
    init() {
        mobile = nil
        web = nil
    }
}
