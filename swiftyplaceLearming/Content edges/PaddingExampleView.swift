//
//  PaddingExampleView.swift
//  swiftyplaceLearming
//
//  Created by Авазбек Надырбек уулу on 2/14/26.
//

import SwiftUI

struct PaddingExampleView: View {
    var body: some View {
        VStack {
            Text("Hello, World!")
                .background(Color.cyan)
                .padding()
                .background(Color.yellow)
            
            Text("Hello, World!")
                .padding(50)
                .background(Color.yellow)
            
            Text("Hello, World!")
                .padding(.horizontal, 50)
                .background(Color.yellow)
            
            Text("Hello, World!")
                .padding(.leading, 50)
                .background(Color.yellow)
            
            Text("Hello, World!")
                .padding(.top, 50)
                .background(Color.yellow)
            
            Text("Hello, World!")
                .padding([.top, .horizontal], 50)
                .background(Color.yellow)
            
            Text("Scene Padding")
                .scenePadding()
        }
    }
}

#Preview {
    PaddingExampleView()
}
