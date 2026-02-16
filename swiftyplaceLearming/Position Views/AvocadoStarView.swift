//
//  AvocadoStarView.swift
//  swiftyplaceLearming
//
//  Created by Авазбек Надырбек уулу on 2/10/26.
//

import SwiftUI

struct AvocadoStarView: View {
    var body: some View {
        HStack(alignment: .imageTitleAlignmentGuide) {
            VStack {
                Text("★★★★")
                    .overlay {
                        Color.blue.frame(height: 1)
                    }
                    .alignmentGuide(.imageTitleAlignmentGuide) { dimension in
                        dimension[VerticalAlignment.center]
                    }
                
                Text("5 star")
            }
            
            VStack(alignment: .leading) {
                HStack {
                    Text("Avocado Toast")
                        .font(.title)
                        .overlay {
                            Color.blue.frame(height: 1)
                        }
                        .alignmentGuide(.imageTitleAlignmentGuide) { dimension in
                            dimension[VerticalAlignment.center]
                        }
                    Spacer()
                    Image("avocado_small")
                }
                
                
                Text("Avocado, Almond Butter, Bread Crumbs, and a sprinkle of sea salt.")
            }
            
            
        }
    }
}

#Preview {
    AvocadoStarView()
}
