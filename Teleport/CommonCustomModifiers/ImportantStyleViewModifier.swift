//
//  ImportantStyleViewModifier.swift
//  Teleport
//
//  Created by Kevin Boulala on 30/03/2021.
//

import SwiftUI

struct ImportantStyleViewModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(.pink)
            .shadow(color: .black, radius: 4)
    }
}

extension View {
    func importantStyle() -> some View {
        self.modifier(ImportantStyleViewModifier())
    }
}
