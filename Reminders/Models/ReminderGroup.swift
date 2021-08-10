//
//  ReminderGroup.swift
//  Reminders
//
//  Created by Brenden Vogt on 8/7/21.
//

import Foundation

struct ReminderGroup : Identifiable, Hashable {
    var id = UUID()
    var category : ReminderCategory
    var reminders : [Reminder] = []
}

extension ReminderGroup {
    static func sampleData() -> ReminderGroup {
        let reminders = Array(repeating: Reminder.sampleData(), count: 10)
        return ReminderGroup(id: UUID(), category: .allCases.randomElement() ?? .Work, reminders: reminders)
    }
}
