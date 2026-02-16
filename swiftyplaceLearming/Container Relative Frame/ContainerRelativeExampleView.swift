//
//  ContainerRelativeExampleView.swift
//  swiftyplaceLearming
//
//  Created by Авазбек Надырбек уулу on 2/14/26.
//

import SwiftUI

struct ContainerRelativeExampleView: View {
    var body: some View {
        VStack {
            Image(.vocado)
                .resizable()
                .scaledToFill()
                .containerRelativeFrame(.vertical) { length, axis in
                    return length / 2
                }
                .clipped()
            
            Color.gray
        }
       
    }
}

fileprivate struct ScrollColorExampleView: View {
    
    let colors = [Color.blue, Color.red, Color.yellow]
    
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                ForEach(colors, id: \.self) { color in
                    color
                        .containerRelativeFrame([.horizontal])
                    
                }
            }
        }
    }
}

#Preview {
    ContainerRelativeExampleView()
}

#Preview("Scroll Color") {
    ScrollColorExampleView()
}

