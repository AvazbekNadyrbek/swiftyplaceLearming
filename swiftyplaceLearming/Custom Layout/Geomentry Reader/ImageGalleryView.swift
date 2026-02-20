//
//  ImageGalleryView.swift
//  swiftyplaceLearming
//
//  Created by Авазбек Надырбек уулу on 2/17/26.
//

import SwiftUI

struct ImageGalleryView: View {
    let inspirations = NatureInspiration.examples()
    
    var body: some View {
        GeometryReader { geomentry in
            ScrollView {
                LazyVGrid(columns: gridItem(for: geomentry.size.width), spacing: 0) {
                    ForEach(inspirations) { inspiration in
                        ImageAspectView(imageName: inspiration.imageName, frameAspectRatio: 1)
                    }
                }
            }
            
            
        }
    }
    
    func gridItem(for width: CGFloat) -> [GridItem] {
        
        let numberOfColumns = Int(round(width / 200))
        
        return Array(repeating: GridItem(.flexible(minimum: 140, maximum: 350), spacing: 0), count: numberOfColumns)
    }
}

#Preview {
    ImageGalleryView()
}
