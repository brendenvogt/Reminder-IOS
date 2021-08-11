//
//  ViewExtension.swift
//  Reminders
//
//  Created by Brenden Vogt on 8/10/21.
//

import SwiftUI

extension View {
    func customBackground(color: Color = .background) -> some View {
        self.background(RoundedRectangle(cornerRadius: 8).fill(color))
    }
}
