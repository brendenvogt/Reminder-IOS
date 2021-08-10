//
//  ReminderGroup.swift
//  Reminders
//
//  Created by Brenden Vogt on 8/7/21.
//

import Foundation

struct ReminderGroup : Identifiable, Hashable {
    var id = UUID()
    var category : ReminderCategory = .general
    var reminders : [Reminder] = []
}

extension ReminderGroup {
    static func sampleData() -> [ReminderGroup] {
        var reminderGroups: [ReminderGroup] = []
        
        for category in ReminderCategory.allCases {
            reminderGroups.append(ReminderGroup(category: category, reminders: Reminder.sampleData()))
        }

        return reminderGroups
    }
    
}
