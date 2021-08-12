//
//  FeaturetteItemView.swift
//  Reminders
//
//  Created by Brenden Vogt on 8/10/21.
//

import SwiftUI

struct FeaturetteItemView: View {
    
    let model : FeaturetteItemModel
    let imageSize : CGFloat = 30
    
    var body: some View {
        HStack(spacing: 20) {
            Image(systemName: model.imageName)
                .font(.system(size: imageSize))
                .frame(width: imageSize, height: imageSize, alignment: .center)
            VStack(alignment: .leading, spacing: 2, content: {
                Text(model.title).font(.system(size: 20, weight: .semibold)).bold()
                Text(model.subtitle).font(.system(size: 18, weight: .regular)).foregroundColor(.init(white: 0.6))
            })
        }
        .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
    }
    
}

struct FeaturetteItemView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturetteItemView(model: FeaturetteItemModel.init(id: 1, imageName: "square.and.pencil", title: "Easy Organization", subtitle: "A completely rebuilt app that makes it easier than ever to create and organize reminders."))
    }
}
