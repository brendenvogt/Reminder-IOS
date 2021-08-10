//
//  ReminderViewModel.swift
//  Reminders
//
//  Created by Brenden Vogt on 8/10/21.
//

import Foundation

final class ReminderViewModel : ObservableObject {
    @Published var reminderGroups: [ReminderGroup] = ReminderGroup.sampleData()
    
    func createReminder(for category: ReminderCategory, reminder: Reminder) {
        if let firstCategory = reminderGroups.firstIndex(where: {$0.category == category}) {
            reminderGroups[firstCategory].reminders.append(reminder)
        } else {
            reminderGroups.append(ReminderGroup(category: category, reminders: [reminder]))
        }
    }
    
    func toggleReminder(for category: ReminderCategory, reminder: Reminder) {
        if let firstCategory = reminderGroups.firstIndex(where: {$0.category == category}) {
            if let foundReminder = reminderGroups[firstCategory].reminders.firstIndex(where: {$0.id == reminder.id}) {
                reminderGroups[firstCategory].reminders[foundReminder].completed.toggle()
                objectWillChange.send()
            }
        }
    }
}
