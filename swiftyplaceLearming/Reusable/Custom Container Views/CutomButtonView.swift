//
//  CutomButtonView.swift
//  swiftyplaceLearming
//
//  Created by Авазбек Надырбек уулу on 2/16/26.
//

import SwiftUI

struct CutomButtonView: View {
    var body: some View {
        VStack(spacing: 20) {
            Button {
                
            } label: {
                Image(systemName: "circle")
                Text("Button")
            }
            
            CustomButton {
                
            } label: {
                Image(systemName: "circle")
                Text("Button")
            }
        }
    }
}

struct CustomButton<Label> : View where Label : View {
    
    let action: () -> Void
    let label: Label
    
    init(action: @escaping () -> Void, @ViewBuilder label: () -> Label) {
        self.action = action
        self.label = label()
    }
    
    var body: some View {
        HStack {
            label
        }
        .foregroundStyle(.accent)
        .onTapGesture {
            action()
        }
    }
}
    
#Preview {
    CutomButtonView()
}
