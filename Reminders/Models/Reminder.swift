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
    let completed = false
}

extension Reminder {
    static func sampleData() -> Reminder {
        let uuid = UUID()
        return Reminder(id: uuid, name: "Sample Reminder \(uuid)", date: Date())
    }
}
