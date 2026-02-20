//
//  BoundsMeasurmentExample.swift
//  swiftyplaceLearming
//
//  Created by Авазбек Надырбек уулу on 2/18/26.
//

import SwiftUI

struct BoundsMeasurmentExample: View {
    
    @State private var bounds = CGRect.zero
    
    var body: some View {
        VStack {
            Image(.automn)
                .resizable()
                .scaledToFit()
                .frame(width: 300)
                .measureBounds(bounds: $bounds, namespace: "test")
            
            Text("size: \(bounds.width)")
        }
    }
}

struct BoundsMeasurment: ViewModifier {
    
    @Binding var bounds: CGRect
    let namespace: String
    func body(content: Content) -> some View {
        content
            .background {
                GeometryReader { geometry in
                    Color.clear
                        .preference(key: BoundsPreferenceKey.self, value: geometry.frame(in: .named(namespace)))
                }
            }
            .onPreferenceChange(BoundsPreferenceKey.self) { value in
                self.bounds = value
            }
    }
    
}

extension View {
    
    func measureBounds(bounds: Binding<CGRect>, namespace: String) -> some View {
        self.modifier(BoundsMeasurment(bounds: bounds, namespace: namespace))
    }
    
}

struct BoundsPreferenceKey: PreferenceKey {
    static var defaultValue: CGRect = .zero
    
    static func reduce(value: inout CGRect, nextValue: () -> CGRect) {
        value = nextValue()
    }
}

#Preview {
    BoundsMeasurmentExample()
}
