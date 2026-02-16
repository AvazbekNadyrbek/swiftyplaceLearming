//
//  FancyBackgroundiew.swift
//  swiftyplaceLearming
//
//  Created by Авазбек Надырбек уулу on 2/11/26.
//

import SwiftUI

struct FancyBackgroundiew: View {
    
    @State private var animate: Bool = false
    
    var body: some View {
        ZStack {
            Color.backgroundColor2
            
            Circle()
                .fill(Color.accentColor)
                .frame(width: 100)
                .opacity(0.7)
                .offset(x: animate ? -100 : 100, y: animate ? -50 : 100)
                .blur(radius: animate ? 80 : 100)
            
            Circle()
                .fill(Color.cyan)
                .opacity(0.8)
                .blur(radius: 60)
                .frame(width: 100)
                .offset(x: animate ? 200 : 100, y: -200)
            
        }
        .onAppear {
            withAnimation(Animation.easeInOut(duration: 2).repeatForever()) {
                animate = true
            }
        }
    }
}

#Preview {
    FancyBackgroundiew()
}
