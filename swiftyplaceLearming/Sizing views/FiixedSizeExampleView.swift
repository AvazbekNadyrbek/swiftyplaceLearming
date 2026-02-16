//
//  FiixedSizeExampleView.swift
//  swiftyplaceLearming
//
//  Created by Авазбек Надырбек уулу on 2/12/26.
//

import SwiftUI

struct FiixedSizeExampleView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Eat more")
                Image("avocado_big")
                Text("Avocado Toast")
                    .fixedSize()
            }
            .font(.title)
            .lineLimit(1)
            
            HStack {
                
                Color.cyan
                    .frame(height: 50)
                
                Text("Lorem Lorem avazbek ist deutschland where is Berlin")
                    .fixedSize()
                    .frame(width: 300, height: 50)
                    .border(Color.black)
            }
            
        }
    }
}

fileprivate struct EqualSizeExampleView: View {
    var body: some View {
        VStack {
            HStack {
                Text("short String")
                    .padding()
                    .background(Color.green)
                Text("There is not a lot of space to fit everyhing")
                    .padding()
                    .background(Color.red)
            }
            
            HStack {
                
                Text("short String")
                    .padding()
                    .frame(maxHeight: .infinity)
                    .background(Color.green)
                Text("There is not a lot of space to fit everyhing")
                    .padding()
                    .frame(maxHeight: .infinity)
                    .background(Color.red)
            }
            .fixedSize(horizontal: false, vertical: true)
            
            VStack {
                
                Text("short String")
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.green)
                Text("There is not a lot of space to fit everyhing")
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.red)
            }
            .fixedSize(horizontal: true, vertical: false)
        }
    }
}

fileprivate struct UnderfinedFixewdSizeExampleView: View {
    var body: some View {
        VStack {
            Text("fixed size of a color")
            
            Color.indigo.fixedSize(horizontal: true, vertical: true)
            
            HStack(spacing: 0) {
                Text("Placeholder")
                    .background(Color.yellow)
                Color.indigo
                    .fixedSize()
                Text("Placeholder")
                    .background(Color.yellow)
            }
            
            HStack(spacing: 0) {
                Text("Placeholder")
                    .background(Color.yellow)
                Spacer()
                    .fixedSize()
                Text("Placeholder")
                    .background(Color.yellow)
            }
            
            
            
        }
    }
}

fileprivate struct ContControllFixedSizeExampleView: View {
    var body: some View {
        VStack {
            ColorPicker("Select a color", selection: .constant(.green))
                .border(Color.red)
            
            ColorPicker("Select a color", selection: .constant(.green))
                .border(Color.red)
                .fixedSize(horizontal: true, vertical: true)
            
            DatePicker("Select a date", selection: .constant(Date()))
                .fixedSize(horizontal: true, vertical: true)
        }
    }
}

#Preview {
    FiixedSizeExampleView()
}

#Preview("Equal Size") {
    EqualSizeExampleView()
}

#Preview("No intrinsic size") {
    UnderfinedFixewdSizeExampleView()
}

#Preview("Controll Views") {
    ContControllFixedSizeExampleView()
}

