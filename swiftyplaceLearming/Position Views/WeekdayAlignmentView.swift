//
//  WeekdayAlignmentView.swift
//  swiftyplaceLearming
//
//  Created by Авазбек Надырбек уулу on 2/10/26.
//

import SwiftUI

struct WeekdayAlignmentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            ForEach(Weekday.allCases) { weekday in
                
                Text(weekday.name())
                    .padding(.horizontal)
                    .background(Color(red: 0, green: 0.75, blue: Double(weekday.numberValue()) / 7), in: Capsule())
                    .alignmentGuide(.leading) { dimension in
                        
                        if weekday.numberValue() % 2 == 0 {
                            return dimension[.leading]
                        } else {
                            return dimension[.trailing]
                        }
                        
                    }
            }
        }
    }
}

#Preview {
    WeekdayAlignmentView()
}
