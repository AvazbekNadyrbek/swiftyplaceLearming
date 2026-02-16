//
//  CustomAlignmentGuideExamplView.swift
//  swiftyplaceLearming
//
//  Created by Авазбек Надырбек уулу on 2/10/26.
//

import SwiftUI

struct CustomAlignmentGuideExamplView: View {
    var body: some View {
        HStack(alignment: .firstThird, spacing: 1) {
            HorizontalStripesView()
                .frame(height: 100)
            
            HorizontalStripesView()
                .frame(height: 50)
            
            HorizontalStripesView()
                .frame(height: 130)
            
        }
    }
}

fileprivate struct HorizontalStripesView: View {
    var body: some View {
        VStack(spacing: 1) {
            Color.yellow
            Color.orange
            Color.red
        }
    }
}

fileprivate struct FirstThirdAlignment: AlignmentID {
    static func defaultValue(in context: ViewDimensions) -> CGFloat {
        context.height / 3
    }
}

extension VerticalAlignment {
    static let firstThird = VerticalAlignment(FirstThirdAlignment.self)
}

#Preview {
    CustomAlignmentGuideExamplView()
}
