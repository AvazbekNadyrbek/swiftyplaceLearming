//
//  InspirationDetailsView.swift
//  swiftyplaceLearming
//
//  Created by Авазбек Надырбек уулу on 2/18/26.
//

import SwiftUI

struct InspirationDetailsView: View {
    
    let inspiration: NatureInspiration
    
    var body: some View {
        
        GeometrStack {
            content
        }
        .edgesIgnoringSafeArea([.bottom, .leading, .trailing])
    }
    
    @ViewBuilder
    var content: some View {
        ImageAspectView(imageName: inspiration.imageName, frameAspectRatio: 1)
        VStack(alignment: .leading, spacing: 5) {
            Text(inspiration.name)
                .font(.title)
            Text(inspiration.description)
                .font(.caption)
        }
        .padding(12)
    }
    
}

struct GeometrStack<Content: View>: View {
    
    let content: () -> Content
    let limit: CGFloat
    
    init(limit: CGFloat = 500, @ViewBuilder content: @escaping ()-> Content) {
        self.content = content
        self.limit = limit
    }
    
    var body: some View {
        GeometryReader { geometry in
            if geometry.size.width > limit {
                ScrollView {
                    HStack(alignment: .top, spacing: 10, content: content)
                }
            } else {
                ScrollView {
                    VStack(alignment: .center, spacing: 10, content: content)
                }
            }
        }

    }
}

#Preview {
    InspirationDetailsView(inspiration: .example1())
}
