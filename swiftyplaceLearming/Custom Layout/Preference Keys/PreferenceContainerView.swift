//
//  PreferenceContainerView.swift
//  swiftyplaceLearming
//
//  Created by Авазбек Надырбек уулу on 2/18/26.
//

import SwiftUI

struct PreferenceContainerView<Content> : View where Content : View {
    
    
    @State private var title: String? = nil
    let content: () -> Content
    
    
    init(@ViewBuilder content: @escaping () -> Content) {
        self.content = content
    }
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 25)
                .fill(Color.cyan.gradient)
            VStack(alignment: .leading, spacing: 10) {
                if let title {
                    Text(title)
                        .font(.title)
                        .bold()
                }
                content()
            }
            .padding()
        }
        .aspectRatio(1, contentMode: .fit)
        .onPreferenceChange(StringPrefenceKey.self) { value in
            self.title = value
        }
    }
}

struct StringPrefenceKey: PreferenceKey {
    static var defaultValue: String? = nil
    
    static func reduce(value: inout String?, nextValue: () -> String?) {
        value = nextValue()
    }
}

extension View {
    func myContainerTitle(_ title: String) -> some View {
        self.preference(key: StringPrefenceKey.self, value: title)
    }
}

#Preview {
    PreferenceContainerView {
        Text("First Text")
            .myContainerTitle("first")
        
        Text("Container with Preferences")
            .myContainerTitle("Second Title")
    }
}
