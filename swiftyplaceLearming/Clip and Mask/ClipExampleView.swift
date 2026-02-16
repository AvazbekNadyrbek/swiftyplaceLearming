//
//  ClipExampleView.swift
//  swiftyplaceLearming
//
//  Created by Авазбек Надырбек уулу on 2/14/26.
//

import SwiftUI

struct ClipExampleView: View {
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .padding(20)
                .background(Color.yellow)
                .clipShape(RoundedRectangle(cornerRadius: 15))
            
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .padding(20)
                .background(Color.yellow)
                .clipShape(Capsule())
            
            Image(.avocadoBig)
                .scaleEffect(2, anchor: .topTrailing)
                .clipped()
            
            Image(.spiderImageBG)
                .resizable()
                .scaledToFill()
                .frame(width: 100, height: 100, alignment: .topLeading)
                .clipped()
            
            Image(.spiderImageBG)
                .resizable()
                .scaledToFill()
                .frame(width: 100, height: 100, alignment: .center)
                .clipShape(Circle())
            
        }
    }
}

#Preview {
    ClipExampleView()
}
