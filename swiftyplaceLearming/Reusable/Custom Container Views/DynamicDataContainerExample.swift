//
//  DynamicDataContainerExample.swift
//  swiftyplaceLearming
//
//  Created by Авазбек Надырбек уулу on 2/16/26.
//

import SwiftUI

struct DynamicDataContainerExample: View {
    
    let inspirations = NatureInspiration.examples()
    
    var body: some View {
        
        CustomContainer(inspirations) { inspiration in
            Image(inspiration.imageName)
                .resizable()
                .scaledToFill()
        }
    }
}

struct CustomContainer<Data, RowContent>: View where Data: RandomAccessCollection, Data.Element: Identifiable, RowContent: View {
    
    private let data: [Data.Element]
    private let rowContent: (Data.Element) -> RowContent
    
    
    init(_ data: Data, @ViewBuilder rowContent: @escaping (Data.Element) -> RowContent) {
        self.data = data.map({ $0 })
        self.rowContent = rowContent
    }
    
    var body: some View {
        GeometryReader { geomentry in
            List(data) { element in
                rowContent(element)
                    .frame(width: geomentry.size.width,
                           height: geomentry.size.width)
                    .clipped()
                    .listRowSeparator(.hidden)
                    .listRowInsets(.init(top: 0, leading: 0, bottom: 0, trailing: 0))
            }
            .listStyle(.plain)
        }
    }
}

fileprivate struct StartListView: View {
    
    let inspirations = NatureInspiration.examples()
    
    var body: some View {
        GeometryReader { geomentry in
            List(inspirations) { inspirations in
                Image(inspirations.imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: geomentry.size.width,
                           height: geomentry.size.width)
                    .clipped()
                    .listRowSeparator(.hidden)
                    .listRowInsets(.init(top: 0, leading: 0, bottom: 0, trailing: 0))
            }
            .listStyle(.plain)
        }
    }
}
#Preview {
    DynamicDataContainerExample()
}

#Preview("Starting Point") {
    StartListView()
}
