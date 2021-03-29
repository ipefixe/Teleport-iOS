//
//  ScoreView.swift
//  Teleport
//
//  Created by Kevin Boulala on 29/03/2021.
//

import SwiftUI

struct ScoreView: View {
    private let score: ScoreCategory
    private let maxSize = 200.0
        
    init(score: ScoreCategory) {
        self.score = score
    }
    
    var body: some View {
        HStack() {
            Text(score.name)
            
            Spacer()
            
            ZStack() {
                ZStack(alignment: Alignment(horizontal: .leading, vertical: .center)) {
                    RoundedRectangle(cornerRadius: 25.0, style: .continuous)
                        .fill(Color.gray)
                        .frame(width: CGFloat(maxSize), height: 20, alignment: .leading)
                    RoundedRectangle(cornerRadius: 25.0, style: .continuous)
                        .fill(Color.pink)
                        .frame(width: CGFloat(maxSize * (score.scoreOutOf10 / 10.0)) , height: 20, alignment: .leading)
                }
                
                Text("\(String(format: "%.02f", score.scoreOutOf10))")
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding()
            }
        }
    }
}
