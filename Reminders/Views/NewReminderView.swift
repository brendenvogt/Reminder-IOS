//
//  NewReminderView.swift
//  Reminders
//
//  Created by Brenden Vogt on 8/10/21.
//

import SwiftUI

struct NewReminderView: View {
    
    @State private var category : ReminderCategory = .general
    @State private var reminder : Reminder = Reminder()
    
    @EnvironmentObject private var viewModel: ReminderViewModel
    @Environment(\.presentationMode) private var presentation
    
    var body: some View {
        NavigationView {
            ScrollView {
                
                // Reminder Category
                Text("Categories".capitalized).headline()
                Picker("please choose a category", selection: $category) {
                    ForEach(ReminderCategory.allCases, id: \.self) {
                        header in Text(header.name)
                    }
                }
                
                // Reminder Name
                Text("Reminder Name".capitalized).headline()
                TextField("Reminder", text: $reminder.name)
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 15).foregroundColor(.background))
                    .padding(.horizontal)
                
                // Reminder Date
                Text("Date".capitalized).headline()
                DatePicker("pick a date", selection: $reminder.date,
                           in:Date()...,
                           displayedComponents: .date)
                    .labelsHidden()
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                    .padding()
                
                // Button
                Button(action: {
                    viewModel.createReminder(for: category, reminder: reminder)
                    presentation.wrappedValue.dismiss()
                }, label: {
                    Text("Create Reminder".capitalized).kerning(1.0)
                })
                .disabled(!reminderButtonStatus)
                .buttonStyle(CustomButtonStyle(status: reminderButtonStatus))
                
                
            }.navigationTitle("New Reminder")
        }.navigationViewStyle(StackNavigationViewStyle())
    }
    
    var reminderButtonStatus: Bool {
        !reminder.name.isEmpty && reminder.name != ""
    }
}

struct NewReminderView_Previews: PreviewProvider {
    static var previews: some View {
        NewReminderView()
    }
}
