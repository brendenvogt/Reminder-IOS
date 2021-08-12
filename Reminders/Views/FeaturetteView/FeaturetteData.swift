//
//  FeaturetteData.swift
//  Reminders
//
//  Created by Brenden Vogt on 8/10/21.
//

import Foundation
struct FeaturetteData {
    static let title : String = "Welcome to Reminders"
    static let models: [FeaturetteItemModel] = [
        FeaturetteItemModel(
            id: 1,
            imageName: "sparkles",
            title: "All New",
            subtitle: "a completely rebuilt app that makes it easier than ever to create and organize reminders."),
        FeaturetteItemModel(
            id: 2,
            imageName: "plus",
            title: "Quick Creation",
            subtitle: "Just type, talk to Siri, or tap the new toolbar to create reminders. Siri also suggests reminders found in Messages."),
        FeaturetteItemModel(
            id: 3,
            imageName: "tray.full.fill",
            title: "Easy Organization",
            subtitle: "Use automatic smart lists like Today and Flagged, or organize by grouping lists or reminders.")
    ]

}
