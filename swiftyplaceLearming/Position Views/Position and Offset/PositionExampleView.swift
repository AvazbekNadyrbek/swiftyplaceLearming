//
//  PositionExampleView.swift
//  swiftyplaceLearming
//
//  Created by Авазбек Надырбек уулу on 2/11/26.
//

import SwiftUI

struct PositionExampleView: View {
    var body: some View {
        VStack {
            ZStack {
                CrossHairView()
                
                Circle()
                    .fill(Color.cyan)
                    .frame(width: 50, height: 50)
                    .offset(x: 100, y: 100)
            }
            .frame(height: 400)
            
            Text("Offset")
                .offset(x: 10.0, y: 0)
        }
    }
}

struct OffSetExampleView: View {
    var body: some View {
        VStack {
            ZStack {
                CrossHairView()
                
                Circle()
                    .fill(Color.cyan)
                    .frame(width: 50, height: 50)
                    .position(x: 0 , y: 0)
            }
            .frame(height: 400)
            
            
            Text("position")
                .position(x: 10.0, y: 0)
        }
    }
}

struct CrossHairView: View {
    var body: some View {
        
        ZStack {
            Color.gray.frame(width: 1)
            Color.gray.frame(height: 1)
        }.border(Color.gray)
        
    }
}

#Preview {
    PositionExampleView()
}

#Preview("Offset") {
    OffSetExampleView()
}
