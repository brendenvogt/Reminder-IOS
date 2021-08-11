//
//  HeadlineExtension.swift
//  Reminders
//
//  Created by Brenden Vogt on 8/10/21.
//

import SwiftUI

extension Text {
    func headline() -> some View {
        self
            .kerning(1)
            .font(.headline)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding([.horizontal, .top])
            .accessibility(addTraits: .isHeader)
    }
}
