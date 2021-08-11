//
//  CheckMarkView.swift
//  Reminders
//
//  Created by Brenden Vogt on 8/10/21.
//

import SwiftUI

struct CheckMarkView: View {

    var completed: Bool
    var accessibilityLabel: Text {
        completed ? Text("Reminder Completed") : Text("Mark the reminder complete")
    }
    var imageName: String {
        completed ? "checkmark.circle.fill" : "circle"
    }
    var foregroundColor: Color {
        completed ? .white : .gray
    }

    var body: some View {
        Image(
            systemName: imageName)
            .font(.system(size: 25))
            .foregroundColor(foregroundColor)
            .accessibility(label: accessibilityLabel)
    }
}


struct CheckMarkView_Previews: PreviewProvider {
    static var previews: some View {
        HStack {
            CheckMarkView(completed: true)
            CheckMarkView(completed: false)
        }
    }
}
