//
//  FrameExampleView.swift
//  swiftyplaceLearming
//
//  Created by Авазбек Надырбек уулу on 2/12/26.
//

import SwiftUI

struct FrameExampleView: View {
    var body: some View {
        VStack(alignment: .trailing) {
            Text("Hello, World!")
                .frame(maxWidth: .infinity, alignment: .trailing)
                .background(Color.yellow)
            
            Divider()
            
            HStack {
                Spacer()
                Text("Hello, World!")
            }
            
            Divider()
            
            Text("Hello, World!")
            
            Divider()
            
            Color.gray.frame(height: 1)
            
            HStack(spacing: 0) {
                Color.red
                Color.orange
                Color.yellow
                Color.green
                Color.blue
            }
            .frame(width: 100, height: 100)
            .mask(Circle())
            
            
        }
    }
}

fileprivate struct IdealFrameExampleView: View {
    var body: some View {
        ScrollView {
            Text("Hello, World!")
                .frame(minWidth: 0,
                       idealWidth: 100,
                       maxWidth: .infinity,
//                       minHeight: 0,
                       idealHeight: 100,
                       maxHeight: .infinity,
                )
                .background(Color.yellow)
            
            Text("fixed frame height")
                .frame(height: 100)
                .frame(maxWidth: .infinity)
                .background(Color.yellow)
        }
    }
}

fileprivate struct MultiFrameExampleView: View {
    
    let text = "move it around"
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(text)
            
            Text(text)
                .frame(maxWidth: .infinity, alignment: .trailing)
                .background(Color.yellow)
            
            Text(text)
                .frame(maxWidth: 300, alignment: .trailing)
                .background(Color.yellow)
            
            Text(text)
                .frame(maxWidth: 300, alignment: .trailing)
                .background(Color.yellow)
                .frame(maxWidth: .infinity, alignment: .trailing)
                .background(Color.orange)
            
            Text(text)
                .frame(maxWidth: 300, alignment: .trailing)
                .background(Color.yellow)
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color.orange)
        }
    }
}

#Preview {
    FrameExampleView()
}

#Preview("Ideal Height") {
    IdealFrameExampleView()
}

#Preview("multiple frames") {
    MultiFrameExampleView()
}
