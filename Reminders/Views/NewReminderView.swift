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
                Text("Categories".capitalized).font(.headline)
                Picker("please choose a category", selection: $category) {
                    ForEach(ReminderCategory.allCases, id: \.self) {
                        header in Text(header.name)
                    }
                }
                
                // Reminder Name
                Text("Reminder Name".capitalized).font(.headline)
                TextField("Reminder", text: $reminder.name)
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 15).foregroundColor(.init(white: 0.9)))
                    .padding(.horizontal)
                
                // Reminder Date
                Text("Date".capitalized).font(.headline)
                DatePicker("Pick a date", selection: $reminder.date)
                
            }
        }
    }
}

struct NewReminderView_Previews: PreviewProvider {
    static var previews: some View {
        NewReminderView()
    }
}
