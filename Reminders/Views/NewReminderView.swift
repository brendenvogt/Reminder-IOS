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
            Form {
                
                // Reminder Name
                Section(header: Text("Reminder Name".capitalized),
                        content: {
                    TextField("Reminder", text: $reminder.name)
                })
                
                // Reminder Category
                Section(header:
                            Text("Categories".capitalized),
                        content: {
                            Picker("Choose a category", selection: $category) {
                                ForEach(ReminderCategory.allCases, id: \.self) {
                                    header in Text(header.name)
                                }
                            }
                        })
                                
                // Reminder Date
                Section(header: Text("Date".capitalized), content: {
                    DatePicker("Pick a date", selection: $reminder.date, displayedComponents: .date)
                        .datePickerStyle(GraphicalDatePickerStyle())
                })
                
            }
            .gesture(DragGesture().onChanged{_ in UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)})
            .navigationTitle("New Reminder")
            .navigationBarItems(
                leading: Button("Cancel", action: {
                    presentation.wrappedValue.dismiss()
                }),
                trailing:
                    Button(action: {
                        viewModel.createReminder(for: category, reminder: reminder)
                        presentation.wrappedValue.dismiss()
                    }) {
                        Text("Add").bold()
                    }
                    
                    .disabled(!reminderButtonStatus)
                
            )
            


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
