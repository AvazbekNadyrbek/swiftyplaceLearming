//
//  ForEachModelExampleView.swift
//  swiftyplaceLearming
//
//  Created by Авазбек Надырбек уулу on 2/20/26.
//

import SwiftUI

struct Fruit: Identifiable {
    
//    let id = UUID()
    let name: String
    let color: Color
    let isFavorite: Bool
    let id: UUID
    
    init(name: String, color: Color = .yellow, isFavorite: Bool = false) {
        self.name = name
        self.color = color
        self.isFavorite = isFavorite
        self.id = UUID()
    }
}

struct ForEachModelExampleView: View {
    
    @State var fruits = [Fruit(name: "apple"),Fruit(name: "apple"),Fruit(name: "banana"),Fruit(name: "kiwi"), Fruit(name: "cherry")]
    
    @State private var text: String = ""
    @State private var color: Color = .yellow
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Your Fruits")
                .font(.title)
            
            HStack {
                TextField("Fruit", text: $text)
                    .textFieldStyle(.roundedBorder)
                
                ColorPicker("Color", selection: $color)
                    .labelsHidden()

                Button {
                    let newFruit = Fruit(name: text, color: color)
                    fruits.append(newFruit)
                    text = ""
                    
                } label: {
                    Label("Add", systemImage: "plus")
                }

            }
            
            Divider()
    
            ForEach(fruits) { fruit in
                HStack {
                    Text(fruit.name)
                    fruit.color
                        .frame(height: 20)
                }
            
            }
        }
        .padding()
        
    }
}

#Preview {
    ForEachModelExampleView()
}
