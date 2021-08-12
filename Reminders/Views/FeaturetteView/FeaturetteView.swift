//
//  FeaturetteView.swift
//  Reminders
//
//  Created by Brenden Vogt on 8/10/21.
//

import SwiftUI

struct FeaturetteView: View {
    
    @Binding var show : Bool

    let insets : CGFloat = 15
    var body: some View {
        VStack (alignment: .center, spacing: 25, content: {
            Spacer()
            Text(FeaturetteData.title)
                .font(.system(size: 34, weight: .bold))
                .multilineTextAlignment(.center)
            ForEach(FeaturetteData.models) { model in
                FeaturetteItemView(model: model)        .frame(maxWidth: .infinity, alignment: .leading)
            }
            Button(action: {
                log("Continue pressed")
                show = false
            }, label: {
                Text("Continue")
            }).buttonStyle(CustomButtonStyle(status: true))
            Spacer().frame(height:10)
        })
        .padding(EdgeInsets(top: 0, leading: insets, bottom: 0, trailing: insets))
    }
}


struct FeaturetteView_Previews: PreviewProvider {

    static var previews: some View {
        FeaturetteView(show: .constant(true))
    }
}
