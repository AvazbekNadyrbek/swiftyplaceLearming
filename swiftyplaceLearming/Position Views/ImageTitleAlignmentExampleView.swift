//
//  ImageTitleAlignmentExampleView.swift
//  swiftyplaceLearming
//
//  Created by Авазбек Надырбек уулу on 2/10/26.
//

import SwiftUI

struct ImageTitleAlignmentExampleView: View {
    var body: some View {
        HStack(alignment: .imageTitleAlignmentGuide) {
            
            VStack {
                ResizableImageView(imageName: "cat_2")
                    .alignmentGuide( .imageTitleAlignmentGuide, computeValue: { dimension in
                        dimension[.bottom]
                    })
                
                Text("Minime")
                    .font(.title)
            }
            .border(Color.black)
            
            VStack {
                ResizableImageView(imageName: "mont-blanc")
                    .alignmentGuide( .imageTitleAlignmentGuide, computeValue: { dimension in
                        dimension[.bottom]
                    })
                Text("Mountains")
                    .font(.title)
                
                Text("Incredible view during sunset")
            }
            .border(Color.black)
        }
    }
}

fileprivate struct ImageTitleAlignment: AlignmentID {
    static func defaultValue(in context: ViewDimensions) -> CGFloat {
        context[.bottom]
    }
}

extension VerticalAlignment {
    static let imageTitleAlignmentGuide =
        VerticalAlignment(ImageTitleAlignment.self)
}

#Preview {
    ImageTitleAlignmentExampleView()
}
