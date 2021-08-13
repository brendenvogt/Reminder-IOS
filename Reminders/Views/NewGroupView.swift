//
//  NewGroupView.swift
//  Reminders
//
//  Created by Brenden Vogt on 8/13/21.
//

import SwiftUI

// TODO
struct NewGroupView: View {
    
    //@EnvironmentObject private var viewModel: GroupViewModel // reminder group view model

    @State private var bgColor =
        Color(.sRGB, red: 0.98, green: 0.9, blue: 0.2)

    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Group Color".capitalized).headline(), content: {
                    ColorPicker("Alignment Guides", selection: $bgColor)
                })
            }

        }
    }
}

struct NewGroupView_Previews: PreviewProvider {
    static var previews: some View {
        NewGroupView()
    }
}
