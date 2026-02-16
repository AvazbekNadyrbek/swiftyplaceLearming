//
//  ImageTypeExampleView.swift
//  swiftyplaceLearming
//
//  Created by Авазбек Надырбек уулу on 2/13/26.
//

import SwiftUI

struct ImageTypeExampleView: View {
    var body: some View {
        VStack {
            Image(.rocket2)
                .resizable()
                .renderingMode(.template)
                .foregroundColor(.red)
                .scaledToFit()
                .frame(width: 300, height: 300)
            
            Image(.rocket2)
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 300)
        }
    }
}

fileprivate struct GradientSpidermanView: View {
    var body: some View {
        Image(.spiderman)
            .resizable()
            .renderingMode(.template)
            .foregroundStyle(LinearGradient(colors: [Color.pink, Color.red], startPoint: .topLeading, endPoint: .bottomTrailing))
            .scaledToFit()
            .padding([.leading, .trailing, .top, .bottom])
            .background(Color.backgroundColor2)
    }
}

#Preview {
    ImageTypeExampleView()
}

#Preview("Gradient image") {
    GradientSpidermanView()
}
