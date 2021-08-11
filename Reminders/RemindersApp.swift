//
//  RemindersApp.swift
//  Reminders
//
//  Created by Brenden Vogt on 8/7/21.
//

import SwiftUI

@main
struct RemindersApp: App {
    
    @StateObject private var viewModel = ReminderViewModel()
    
    var body: some Scene {
        WindowGroup {
            MainView().environmentObject(viewModel)
        }
    }
}
