//
//  ButtonStyleExampleView.swift
//  swiftyplaceLearming
//
//  Created by Авазбек Надырбек уулу on 2/16/26.
//

import SwiftUI

struct ButtonStyleExampleView: View {
    @State private var tapCount = 0
    
    var body: some View {
        VStack {
            Button {
                
            } label: {
                Text("Button")
            }
            .buttonStyle(.borderedProminent)
            
            Button {
                
            } label: {
                Text("Button")
            }
            .buttonStyle(.borderedProminent)
            .disabled(true)
            
            Text("This is a text")
                .onTapGesture {
                    tapCount += 1
                    print("text was tapped - count: \(tapCount)")
                }
            
            Text("Tapped \(tapCount) times")
                .foregroundStyle(.secondary)
            
            Button() {
                
            } label: {
                Text("Button with custom Style")
            }
            .buttonStyle(CustomButtonStyle())
            
            Button() {
                
            } label: {
                Text("Button with custom Style")
            }
            .buttonStyle(CustomButtonStyle())
            .disabled(true)

        }
        .padding()
    }
}

struct CustomButtonStyle: ButtonStyle {
    
    @Environment(\.isEnabled) var isEnabled: Bool
    
    func makeBody(configuration: Configuration) -> some View {
        
        configuration.label
            .foregroundStyle(configuration.role == .destructive ? .red : .white)
            .padding(.horizontal, 10)
            .padding(.vertical, 5)
            .frame(maxWidth: 400)
            .background {
                RoundedRectangle(cornerRadius: 5)
                    .fill(Color.blue)
                    .shadow(radius: shadow(for: configuration.isPressed))
            }
//            .saturation(configuration.isPressed ? 0.3 : 1)
            .scaleEffect(configuration.isPressed ? 0.9 : 1)
            .saturation(isEnabled ? 1 : 0)
        
    }
    
    func shadow(for isPressed: Bool) -> CGFloat {
        guard isEnabled else { return 2 }
        
        if isPressed {
            return 0
        } else {
            return 5
        }
    }
}

#Preview {
    ButtonStyleExampleView()
}
