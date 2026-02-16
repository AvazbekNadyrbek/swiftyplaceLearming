//
//  ViewModifierExampleView.swift
//  swiftyplaceLearming
//
//  Created by Авазбек Надырбек уулу on 2/16/26.
//

import SwiftUI

struct ViewModifierExampleView: View {
    var body: some View {
        VStack {
            
            HStack {
                Text("Hello, World!")
                    .foregroundStyle(.white)
                    .bold()
                    .padding()
                    .background(Color.cyan)
                
                Text("Hello, World!")
                    .modifier(BoxViewModifier())
                
                Text("Hello, World!")
                    .boxStyling()
            }
            
            ZStack {
                RoundedRectangle(cornerRadius: 25)
                    .fill(Color.cyan.gradient)
                Text("Content in  card view wich is using a aspect ratio of one")
                    .padding()
            }
            .aspectRatio(1, contentMode: .fit)
            .padding()
            
            Text("Content in  card view wich is using a aspect ratio of one")
                .squareBoxStylingText()
           
            
//            ResizableImageView(imageName: "fisch_3")
//                .squareBoxStylingText()
        }
        .padding()
    }
}

fileprivate struct BoxViewModifier: ViewModifier {
        
    func body(content: Content) -> some View {
        content
            .foregroundStyle(.white)
            .bold()
            .padding()
            .background(Color.red)
    }
}

extension View {
    func boxStyling() -> some View {
        self
            .foregroundStyle(.white)
            .bold()
            .padding()
            .background(Color.red)
    }

    func squareBoxStyling() -> some View {
        ZStack {
            RoundedRectangle(cornerRadius: 25)
                .fill(Color.cyan.gradient)
            self
                .padding()
        }
        .aspectRatio(1, contentMode: .fit)
    }
}

extension Text {
    func squareBoxStylingText() -> some View {
        ZStack {
            RoundedRectangle(cornerRadius: 25)
                .fill(Color.cyan.gradient)
            self
                .padding()
        }
        .aspectRatio(1, contentMode: .fit)
    }
}

extension Image {
    func resizeToFit(frameAspectRatio: CGFloat, cornerRadius: CGFloat = 2) -> some View {
        Color.cyan
            .aspectRatio(frameAspectRatio, contentMode: .fit)
            .overlay {
                self
                    .resizable()
                    .aspectRatio(contentMode: .fill)
            }
            .clipped()
            .cornerRadius(cornerRadius)
    }
}

#Preview {
    ViewModifierExampleView()
}

#Preview("image") {
    VStack {
        ResizableImageView(imageName: "fisch_3")
        
        Image("fisch_3")
            .resizable()
            .scaledToFit()
        
        Image("fisch_3")
            .resizeToFit(frameAspectRatio: 1, cornerRadius: 20)
    }
}

