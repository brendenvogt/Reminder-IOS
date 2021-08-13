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
    @State private var showFeaturetteView = true
    
    // Get current Version of the App
    func getCurrentAppVersion() -> String {
        let appVersion = Bundle.main.infoDictionary?["CFBundleShortVersionString"]
        let version = (appVersion as! String)
        return version
    }

    // Check if app if app has been started after update
    func checkForUpdate() {
        let version = getCurrentAppVersion()
        let savedVersion = UserDefaults.standard.string(forKey: "savedVersion")

        if savedVersion == version {
            print("App is up to date!")
        } else {
            // Toogle to show WhatsNew Screen as Modal
            self.showFeaturetteView.toggle()
            UserDefaults.standard.set(version, forKey: "savedVersion")
        }
    }

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
                .sheet(isPresented: $showFeaturetteView) {
                    FeaturetteView(show: $showFeaturetteView)
                }
        }
        .navigationViewStyle(StackNavigationViewStyle())
        .onAppear(perform: checkForUpdate)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
