//
//  ReminderCategory.swift
//  Reminders
//
//  Created by Brenden Vogt on 8/7/21.
//

import Foundation

enum ReminderCategory: String, CaseIterable {
    case Work
    case Fun
    case Personal
    
    var name : String {
        return self.rawValue.capitalized
    }
}
