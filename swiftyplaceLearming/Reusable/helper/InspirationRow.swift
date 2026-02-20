//
//  InspirationRow.swift
//  swiftyplaceLearming
//
//  Created by Авазбек Надырбек уулу on 2/18/26.
//

import SwiftUI

struct InspirationRow: View {
    
    let inspiration: NatureInspiration

    var body: some View {
        HStack(alignment: .top, spacing: 10) {
            ImageAspectView(imageName: inspiration.imageName, frameAspectRatio: 1, cornerRadius: 15)
                .containerRelativeFrame(.horizontal) { length, axis in
                    length * 0.3
                }
            
            VStack(alignment: .leading, spacing: 5) {
                Text(inspiration.name)
                    .font(.title2)
                Text(inspiration.description)
                    .font(.caption)
            }
            .padding(.vertical, 12)
        }
    }
}

#Preview {
    InspirationRow(inspiration: NatureInspiration.example1())
}
