//
//  CardContainerExampleView.swift
//  swiftyplaceLearming
//
//  Created by Авазбек Надырбек уулу on 2/16/26.
//

import SwiftUI

struct CardContainerExampleView: View {
    var body: some View {
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: 25)
                    .fill(Color.cyan.gradient)
                VStack {
                    Text("Hello, World!")
                    Text("second")
                }
                .padding()
            }
            .aspectRatio(1, contentMode: .fit)
            
            CardContainer() {
                Text("Hello, World!")
                Text("second")
            }
        }
    }
}

struct CardContainer<Content> : View where Content : View {
    
    let content: () -> Content
    
    
    init(@ViewBuilder content: @escaping () -> Content) {
        self.content = content
    }
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 25)
                .fill(Color.cyan.gradient)
            VStack(alignment: .center, spacing: 10, content: content)
            .padding()
        }
        .aspectRatio(1, contentMode: .fit)
    }
}
#Preview {
    CardContainerExampleView()
}
