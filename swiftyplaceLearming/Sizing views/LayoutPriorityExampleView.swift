//
//  LayoutPriorityExampleView.swift
//  swiftyplaceLearming
//
//  Created by Авазбек Надырбек уулу on 2/12/26.
//

import SwiftUI

struct LayoutPriorityExampleView: View {
    var body: some View {
        VStack {
            
            HStack {
                Text("Eat more")
                Image("avocado_big")
                Text("Avocado Toast")
            }
            .font(.title)
            .lineLimit(1)
            .frame(width: 300)
            .border(Color.black)
            
            HStack {
                Text("Eat more")
                Image("avocado_big")
                Text("Avocado Toast")
                    .layoutPriority(1)
            }
            .font(.title)
            .lineLimit(1)
            .frame(width: 300)
            .border(Color.black)
            
            HStack(spacing: 0) {
                Color.red
                Color.orange
                Color.yellow
                Color.green
                    .frame(minWidth: 10)
                Color.blue
                    .frame(minWidth: 10, idealWidth: 20, maxWidth: 50)
                    .layoutPriority(1)
            }
            .frame(width: 100, height: 100)
            .mask(Circle())
            
        }
    }
}

#Preview {
    LayoutPriorityExampleView()
}
