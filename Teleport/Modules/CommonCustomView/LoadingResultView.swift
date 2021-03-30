//
//  LoadingResultView.swift
//  Teleport
//
//  Created by Kevin Boulala on 30/03/2021.
//

import SwiftUI

struct LoadingResultView: View {
    
    var body: some View {
        VStack(alignment: .center, spacing: 20) {
            ProgressView()
            Text("We are searching for your results 😊")
                .foregroundColor(.pink)
                .shadow(color: .black, radius: 4)
        }
    }
}
