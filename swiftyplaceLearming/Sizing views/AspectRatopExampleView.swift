//
//  AspectRatopExampleView.swift
//  swiftyplaceLearming
//
//  Created by Авазбек Надырбек уулу on 2/14/26.
//

import SwiftUI

struct AspectRatopExampleView: View {
    var body: some View {
        VStack {
            
            Ellipse()
                .fill(Color.yellow)
                .aspectRatio(1.5, contentMode: .fit)
                .frame(height: 100)
            
            Color.cyan
                .aspectRatio(2, contentMode: .fit)
            
            ZStack {
                Color.cyan
                Text("this is a text that is a bit longer")
            }
            .aspectRatio(2, contentMode: .fit)
            .frame(height: 100)
            
            
            HStack {
                Ellipse()
                    .stroke(Color.red)
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.green)
                Rectangle()
                    .fill(Color.yellow)
            }
            .aspectRatio(2, contentMode: .fit)
            .overlay {
                GeometryReader { geometry in
                    Text("Content \(geometry.size.width)x\(geometry.size.height)")
                }
            }
        }
    }
}


fileprivate struct ImageAspectRatioExampleView: View {
    var body: some View {
        VStack {
            ImageAspectView(imageName: "mont-blanc", frameAspectRatio: 1)
                .frame(height: 200)
            
            
            HStack(spacing: 0) {
                ImageAspectView(imageName: "mont-blanc", frameAspectRatio: 1)
                ImageAspectView(imageName: "mont-blanc", frameAspectRatio: 1)
                ImageAspectView(imageName: "mont-blanc", frameAspectRatio: 1)
            }
            
            
            
            
        }
    }
}

struct ImageAspectView: View {
    
    let imageName: String
    let frameAspectRatio: CGFloat
    let cornerRadius: CGFloat
    
    init(imageName: String, frameAspectRatio: CGFloat = 1, cornerRadius: CGFloat = 0) {
        self.imageName = imageName
        self.frameAspectRatio = frameAspectRatio
        self.cornerRadius = cornerRadius
    }
    
    var body: some View {
        Color.cyan
            .aspectRatio(frameAspectRatio, contentMode: .fit)
            .overlay {
                Image(imageName)
                    .resizable()
                    .aspectRatio(nil, contentMode: .fill)
            }
            .clipped()
            .cornerRadius(cornerRadius)
    }
}

#Preview {
    AspectRatopExampleView()
}

#Preview("Images") {
    ImageAspectRatioExampleView()
}
