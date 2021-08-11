//
//  ImageButton.swift
//  Reminders
//
//  Created by Brenden Vogt on 8/10/21.
//

import SwiftUI

struct ImageButton: View {
    var systemName: String
    var label: String
    var action: () -> ()

    var body: some View {
        Button(action: action) {
            Image(systemName: systemName)
                .accessibilityLabel(Text(label))
                .font(.title)
                .accentColor(.main)
        }
    }
}

struct ImageButton_Previews: PreviewProvider {
    static var previews: some View {
        ImageButton(systemName: "rectangle.grid.1x2", label: "Change layout") {
            print("")
        }
    }
}
