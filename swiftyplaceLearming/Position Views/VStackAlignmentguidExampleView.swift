//
//  VStackAlignmentguidExampleView.swift
//  swiftyplaceLearming
//
//  Created by Авазбек Надырбек уулу on 2/10/26.
//

import SwiftUI

struct VStackAlignmentguidExampleView: View {
    var body: some View {
        VStack(spacing: 50) {
            HStack(alignment: .lastTextBaseline) {
                Text("Deelicious")
                
                Image(systemName: "applescript")
                    .font(.title)
                    .border(Color.yellow)
                    .alignmentGuide( .lastTextBaseline, computeValue: { dimesion in
                        dimesion.height * 0.8
                    })
                
                Text("Avocado Toast")
                    .font(.largeTitle)
                
                
            }
            
            HStack(alignment: .lastTextBaseline) {
                Text("Deelicious")
                
                Image(systemName: "applescript")
                    .font(.title)
                    .border(Color.yellow)
                    .alignmentGuide( .lastTextBaseline, computeValue: { dimesion in
                        dimesion[VerticalAlignment.top]
                    })
                
                Text("Avocado Toast")
                    .font(.largeTitle)
            }
            
            VStack(alignment: .leading) {
                
                Text("Moved")
                    .background {
                        HStack(spacing: 0) {
                            Color.pink
                            Color.orange
                            Color.yellow
                            Color.purple
                        }
                    }
                    .alignmentGuide(.leading) { dimension in
                        dimension.width * 0.75
                    }
                
                Text("Delicious")
                    .border(Color.red)
                
                Image(systemName: "applescript")
                    .border(Color.yellow)
                    .alignmentGuide( .leading) { dimension in
                        dimension.width * 0.50
                    }
            }
        }
        
    }
}

fileprivate struct ZStackAlignmentExampleView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            ZStack(alignment: .bottomLeading) {
                ResizableImageExampleView()
                
                SpidermanProfileImage()
                    .alignmentGuide(.bottom) { dimension in
                        dimension.height * 0.5
                    }
                    .alignmentGuide(.leading) { dimension in
                        dimension[.leading] - 10
                    }
            }
            Text("Additional Information")
        }
    }
}

fileprivate struct SpidermanProfileImage: View {
    var body: some View {
        Image("spiderManavatar")
            .resizable()
            .scaledToFill()
            .frame(width: 180, height: 180)
            .clipShape(Circle())
            .shadow(radius: 5)
            .overlay {
                Circle()
                    .stroke(Color.white, lineWidth: 5)
            }
    }
}

fileprivate struct ResizableImageExampleView: View {
    var body: some View {
        Image("spiderImageBG")
            .resizable()
            .scaledToFit()
    }
}

#Preview {
    VStackAlignmentguidExampleView()
}

#Preview("ZStackAlignmentExampleView") {
    ZStackAlignmentExampleView()
}

#Preview("Spidermanvaatar") {
    SpidermanProfileImage()
}
