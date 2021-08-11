//
//  ReminderCardView.swift
//  Reminders
//
//  Created by Brenden Vogt on 8/10/21.
//

import SwiftUI

struct ReminderCardView: View {
    var reminder: Reminder
    var toggle: () -> ()

    var body: some View {
        VStack(spacing: 8) {
            Button(action: { withAnimation { toggle() } }) {
                CheckMarkView(completed: reminder.completed)
            }
            .frame(alignment: .leading)

            Text(reminder.name)
                .font(.headline)
                .multilineTextAlignment(.center)
                .foregroundColor(reminder.completed ? .white : .main)

            if !reminder.completed {
                Text("Due: \(getDate())").font(.subheadline)
            }
        }
        .accessibilityElement(children: .combine)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding(8)
        .customBackground(color: reminder.completed ? .main : .background)
    }

    private func getDate() -> String {
        let format = DateFormatter()
        format.dateFormat = "MMM, dd"
        return format.string(from: reminder.date)
    }
}

struct ReminderCardView_Previews: PreviewProvider {
    static var previews: some View {
        ReminderCardView(reminder: Reminder.sampleData().randomElement()!) {
            print("")
        }
    }
}
