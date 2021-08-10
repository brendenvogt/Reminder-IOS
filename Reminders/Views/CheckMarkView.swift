//
//  CheckMarkView.swift
//  Reminders
//
//  Created by Brenden Vogt on 8/10/21.
//

import SwiftUI

struct CheckMarkView: View {
    var markedCompleted: Bool

    var accessibilityLabel: Text {
        markedCompleted ? Text("Reminder Completed") : Text("Mark the reminder complete")
    }

    var imageName: String {
        markedCompleted ? "checkmark.circle.fill" : "circle"
    }

    var foregroundColor: Color {
        markedCompleted ? .accentColor : .gray
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
            CheckMarkView(markedCompleted: true)
            CheckMarkView(markedCompleted: false)
        }
    }
}
