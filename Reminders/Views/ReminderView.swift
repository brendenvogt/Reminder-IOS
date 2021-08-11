//
//  ReminderView.swift
//  Reminders
//
//  Created by Brenden Vogt on 8/10/21.
//

import SwiftUI

struct ReminderView: View {
    @EnvironmentObject var viewModel: ReminderViewModel

    var items: [GridItem] = Array(repeating: .init(.adaptive(minimum: 120)), count: 2)

    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            ForEach(viewModel.reminderGroups, id: \.id) { group in
                LazyVGrid(columns: items, spacing: 10, pinnedViews: [.sectionHeaders]) {
                    Section(header: categoryVHeader(with: group.category.name)) {
                        ReminderListView(group: group)
                    }
                }.padding()
            }
        }
    }

    private func categoryVHeader(with header: String) -> some View {
        Text(header)
            .font(.title2)
            .bold()
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
            .background(RoundedRectangle(cornerRadius: 0)
                            .fill(Color.headerBackground))
    }
}

struct ReminderView_Previews: PreviewProvider {
    static var previews: some View {
        ReminderView()
    }
}
