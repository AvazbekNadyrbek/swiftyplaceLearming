//
//  ScrollOffsetExampleView.swift
//  swiftyplaceLearming
//
//  Created by Авазбек Надырбек уулу on 2/18/26.
//

import SwiftUI

struct ScrollOffsetExampleView: View {
    
    let inspirations = NatureInspiration.examples()
    let namespace = "scrollViewspace"
    
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 0) {
                ForEach(inspirations) { inspiration in
                    FadeOutImageView(name: inspiration.imageName, namespace: namespace)
                }
            }
        }
        .coordinateSpace(name: namespace)
//        .border(Color.red, width: 5)
    }
}

fileprivate struct FadeOutImageView: View {
    let name: String
    
    @State private var bounds = CGRect.zero
    let namespace: String
    
    var opacity: CGFloat {
        guard bounds.minY < 0 else { return 1 }
        
        let offset = abs(bounds.minY)
        let min = min(offset, bounds.height)
        
        return 1 - min / bounds.height
        
    }
    
    var body: some View {
        Image(name)
            .resizable()
            .scaledToFit()
            .opacity(opacity)
            .measureBounds(bounds: $bounds, namespace: namespace)
    }
}

#Preview {
    ScrollOffsetExampleView()
}
