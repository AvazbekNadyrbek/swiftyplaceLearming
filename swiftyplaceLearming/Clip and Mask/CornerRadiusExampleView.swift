//
//  CornerRadiusExampleView.swift
//  swiftyplaceLearming
//
//  Created by Авазбек Надырбек уулу on 2/14/26.
//

import SwiftUI

struct CornerRadiusExampleView: View {
    var body: some View {
        VStack {
            Text("Hello, Wordl!")
                .padding()
                .background(Color.yellow)
                .cornerRadius(20)
            
            Color.red
                .frame(width: 100, height: 100)
                .cornerRadius(20)
        }
    }
}

#Preview {
    CornerRadiusExampleView()
}
