//
//  ImageUpscalingExampleView.swift
//  swiftyplaceLearming
//
//  Created by Авазбек Надырбек уулу on 2/13/26.
//

import SwiftUI

struct ImageUpscalingExampleView: View {
    var body: some View {
        VStack {
            Image(.avocadoSmall)
            
            Image(.avocadoSmall)
                .resizable()
                .interpolation(.high)
                .frame(width: 100, height: 100)
            
            Image(.avocadoSmall)
                .resizable(capInsets: .init(top: 0, leading: 0, bottom: 0, trailing: 0), resizingMode: .tile)
                .frame(width: 200, height: 200)
        }
    }
}

#Preview {
    ImageUpscalingExampleView()
}
