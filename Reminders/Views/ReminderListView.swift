//
//  ReminderListView.swift
//  Reminders
//
//  Created by Brenden Vogt on 8/10/21.
//

import SwiftUI

struct ReminderListView: View {
    @EnvironmentObject var viewModel: ReminderViewModel

    var group: ReminderGroup

    var body: some View {
        ForEach(group.reminders, id: \.id) { reminder in
            ReminderCardView(reminder: reminder) {
                viewModel.toggleReminder(for: group.category, reminder: reminder)
            }
        }
    }
}

struct ReminderListView_Previews: PreviewProvider {
    static var previews: some View {
        ReminderListView(group: ReminderGroup.sampleData().randomElement()!)
    }
}
