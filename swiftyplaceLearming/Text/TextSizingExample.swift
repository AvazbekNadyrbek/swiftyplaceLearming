//
//  TextSizingExample.swift
//  swiftyplaceLearming
//
//  Created by Авазбек Надырбек уулу on 2/12/26.
//

import SwiftUI

struct TextSizingExample: View {
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
            
            
        }
    }
}

#Preview {
    TextSizingExample()
}
