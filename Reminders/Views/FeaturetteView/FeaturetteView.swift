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
        VStack {
            ScrollView {
                VStack (alignment: .center, content: {
                    Text(FeaturetteData.title)
                        .font(.largeTitle).fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .frame(maxWidth:320)
                        .padding(.top, 90)
                        .padding(.bottom, 40)
                    VStack (alignment: .leading, spacing: 45, content: {
                        ForEach(FeaturetteData.models) { model in
                            FeaturetteItemView(model: model)
                                .frame(maxWidth: .infinity, alignment: .leading)
                        }
                    })
                })
                .padding(EdgeInsets(top: 0, leading: insets, bottom: 20, trailing: insets))
            }
            Button(action: {
                log("Continue pressed")
                show = false
            }, label: {
                Text("Continue")
            }).buttonStyle(CustomButtonStyle(status: true))
            .padding([.bottom], 40)
            .padding([.top, .leading,.trailing], 20)
            .background(Rectangle().foregroundColor(Color(UIColor.systemBackground)))

        }
    }
}


struct FeaturetteView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturetteView(show: .constant(true))
    }
}
