//
//  ReminderCategory.swift
//  Reminders
//
//  Created by Brenden Vogt on 8/7/21.
//

import Foundation

enum ReminderCategory: String, CaseIterable {
    case work
    case fun
    case personal
    case general
    
    var name : String {
        return self.rawValue.capitalized
    }
}

extension ReminderCategory {
    static func sampleData() -> [ReminderCategory] {
        var reminderCategories: [ReminderCategory] = []
        for category in ReminderCategory.allCases {
            reminderCategories.append(category)
        }
        return reminderCategories
    }
}
