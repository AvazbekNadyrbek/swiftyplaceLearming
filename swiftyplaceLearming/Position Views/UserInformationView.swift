//
//  UserInformationView.swift
//  swiftyplaceLearming
//
//  Created by Авазбек Надырбек уулу on 2/10/26.
//

import SwiftUI

struct UserInformationView: View {
    var body: some View {
        VStack(alignment: .customTrailing, spacing: 20) {
            Image(systemName: "person.fill.questionmark")
                .font(.system(size: 40))
                .foregroundStyle(.blue)
                .border(Color.black)
            
            PersoneRowView(title: "Full Name:", value: "John Doe")
            
            PersoneRowView(title: "Street:", value: "One Apple Park Way")
            
            PersoneRowView(title: "Zip:", value: "95014 Cupertino")
            
            PersoneRowView(title: "Details:", value: "John Doe")
        }
    }
}

fileprivate struct PersoneRowView: View {
    let title: String
    let value: String
    var body: some View {
        HStack {
            Text(title)
                .border(Color.orange)
                .alignmentGuide(HorizontalAlignment.customTrailing) { dimension in
                    dimension[.trailing]
                }
            Text(value)
                .border(Color.yellow)
        }
    }
}


fileprivate struct CustomTrailing: AlignmentID {
    static func defaultValue(in context: ViewDimensions) -> CGFloat {
        context[.trailing]
    }
}

extension HorizontalAlignment {
    static let customTrailing: HorizontalAlignment = HorizontalAlignment(CustomTrailing.self)
}

#Preview {
    UserInformationView()
}
