//
//  MainView.swift
//  Reminders
//
//  Created by Brenden Vogt on 8/7/21.
//

import SwiftUI

struct MainView: View {
    
    @EnvironmentObject var viewModel: ReminderViewModel
    @State private var showNewReminderView = false

    var body: some View {
        NavigationView {
            ReminderView()
                .navigationTitle("Reminders")
                .navigationBarItems(
                    trailing:
                        ImageButton(systemName: "plus", label: "Add reminder", action: {
                            showNewReminderView.toggle()
                        }))
                .sheet(isPresented: $showNewReminderView) {
                    NewReminderView().environmentObject(viewModel)
                }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
