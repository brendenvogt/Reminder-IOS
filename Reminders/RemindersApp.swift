//
//  RemindersApp.swift
//  Reminders
//
//  Created by Brenden Vogt on 8/7/21.
//

import SwiftUI

@main
struct RemindersApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            MainView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
