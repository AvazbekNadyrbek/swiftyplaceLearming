//
//  ScrollViewPaddingExample.swift
//  swiftyplaceLearming
//
//  Created by Авазбек Надырбек уулу on 2/14/26.
//

import SwiftUI

struct ScrollViewPaddingExample: View {
    var body: some View {
        ScrollView {
            ResizableImageView(imageName: "vocado")
            
            VStack(alignment: .leading, spacing: 10) {
                Text("Lorem ipsum dolor sit amet")
                    .font(.title)
                
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, Lorem ipsum dolor sit amet, consectetur adipiscing elit, Lorem ipsum dolor sit amet, consectetur adipiscing elit, Lorem ipsum dolor sit amet, consectetur adipiscing elit, Lorem ipsum dolor sit amet, consectetur adipiscing elit, Lorem ipsum dolor sit amet, consectetur adipiscing elit.")
            }
//            .padding()
        }
//        .contentMargins(20)
        .contentMargins(.trailing, 20)
        .contentMargins(5, for: .scrollIndicators)
    }
}

fileprivate struct TextEditroInsetExample: View {
    
    @State private var text: String = "something amazing is comming here"
    
    var body: some View {
        TextEditor(text: $text)
            .border(Color.black)
            .padding()
            .contentMargins(.horizontal, 20)
            .contentMargins(.vertical, 5)
    }
}

#Preview("ScrollView"){
    ScrollViewPaddingExample()
}

#Preview("TextEditor") {
    TextEditroInsetExample()
}
