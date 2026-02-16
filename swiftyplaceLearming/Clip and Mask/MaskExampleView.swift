//
//  MaskExampleView.swift
//  swiftyplaceLearming
//
//  Created by Авазбек Надырбек уулу on 2/14/26.
//

import SwiftUI

struct MaskExampleView: View {
    var body: some View {
        
        ZStack {
            Image(.fisch3)
                .resizable()
                .scaledToFit()
            
            Image(.fisch3)
                .resizable()
                .scaledToFit()
                .mask(alignment: .bottomLeading) {
                    Text("Use this to mask a view")
                        .font(.title)
                        .fontWeight(.heavy)
                        .padding()
                        .border(Color.black, width: 10)
                        .padding()
                }
                .opacity(0.8)
                .brightness(0.6)
                .shadow(radius: 10)
        }
        
    }
}

#Preview {
    MaskExampleView()
}
