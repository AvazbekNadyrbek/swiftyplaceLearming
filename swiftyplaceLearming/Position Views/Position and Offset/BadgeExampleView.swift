//
//  BadgeExampleView.swift
//  swiftyplaceLearming
//
//  Created by Авазбек Надырбек уулу on 2/11/26.
//

import SwiftUI

struct BadgeExampleView: View {
    var body: some View {
        
        VStack {
           Text("Adding a badge")
            
            ZStack(alignment: .topTrailing) {
                Image("fisch_3")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 100)
                   
                Text("10")
                    .padding(5)
                    .background {
                        Circle().fill(.white)
                            .shadow(radius: 5)
                    }
                    .alignmentGuide(.top) { dimension in
                        dimension.height / 2
                    }
                    .alignmentGuide(.trailing) { dimension in
                        dimension.width / 2
                    }
            }
        }
    }
}

fileprivate struct BadBadgeExampleView: View {
    var body: some View {
        
        VStack {
           Text("Adding a badge")
            
            Image("fisch_3")
                .resizable()
                .scaledToFit()
                .frame(height: 100)
                .overlay(alignment: .topTrailing) {
                    Text("10")
                        .padding(5)
                        .background {
                            Circle().fill(.white)
                                .shadow(radius: 5)
                        }
                        .offset(x: 12, y: -10)
                }
        }
    }
}

#Preview {
    BadgeExampleView()
}

#Preview("BadExample") {
    BadBadgeExampleView()
}
