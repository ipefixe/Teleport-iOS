//
//  NoDetailView.swift
//  Teleport
//
//  Created by Kevin Boulala on 29/03/2021.
//

import SwiftUI

struct NoDetailView: View {
    
    var body: some View {
        VStack(alignment: .center, spacing: 50) {
            Text("Oops...")
                .fontWeight(.heavy)
            Text("Sorry, we don't have information for this city")
                .fontWeight(.heavy)
            Text("🙈")
        }
    }
}
