//
//  ScaleEffectExampleView.swift
//  swiftyplaceLearming
//
//  Created by Авазбек Надырбек уулу on 2/14/26.
//

import SwiftUI

struct ScaleEffectExampleView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Hello, World!")
                    .zIndex(1)
                
                Text("Make me larger")
                    .foregroundStyle(Color.accent)
                    .padding()
                    .background(.blue)
                    .scaleEffect(x: 1.5, y: 1.5, anchor: .center)
                
                Text("After the shape")
            }
            
            
            HStack {
                Text("Hello, World!")
                
                Image(.avocadoBig)
                    .border(Color.black)
                    .scaleEffect(x: 0.5, y: 0.5, anchor: .center)
                    .border(Color.red)
                
                Text("After the shape")
            }
        }
        
    }
}

#Preview {
    ScaleEffectExampleView()
}
