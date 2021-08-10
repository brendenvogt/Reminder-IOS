//
//  Reminder.swift
//  Reminders
//
//  Created by Brenden Vogt on 8/7/21.
//

import Foundation

struct Reminder: Identifiable, Hashable {
    var id = UUID()
    var name = ""
    var date = Date()
    var completed = false
}

extension Reminder {
    static func sampleData() -> [Reminder] {
        let reminderProducer : Reminder = {
            let uuid = UUID()
            return Reminder(id: uuid, name: "Sample Reminder \(uuid)", date: Date())
        }()
        return Array(repeating: reminderProducer, count: 10)
    }
}
