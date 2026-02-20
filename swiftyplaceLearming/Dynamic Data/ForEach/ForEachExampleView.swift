//
//  ForEachExampleView.swift
//  swiftyplaceLearming
//
//  Created by Авазбек Надырбек уулу on 2/20/26.
//

import SwiftUI

struct ForEachExampleView: View {
    
    let fruits: [String] = ["apple", "banana", "orange", "peach", "kiwi"]
    
    var body: some View {
        VStack {
            HStack {
                Text("My Fruits: ")
                
                ForEach(fruits, id: \.self) { fruits in
                    Text(fruits)
                }
            }
            
            Divider()
            
            VStack {
                ForEach(0..<10) { index in
                    Text("index \(index)")
                }
            }
            
            Divider()
            
            ForEach(Array(fruits.enumerated()), id: \.element) { index, fruit in
                Text("\(index): \(fruit)")
            }
        }
    }
}

fileprivate struct UnorderedDataView: View {
    
    let numberDictionary: [Int: String] = [1: "One", 2: "Two", 3: "Three", 4: "Four", 5: "Five"]
    
    @State private var uniqueNumbers: Set = [1,2,3,4,5]
    
    @State private var isForwardSorted: Bool = true
    
    var sortedUniqueNumbers: [Int] {
        if isForwardSorted {
            uniqueNumbers.sorted()
        } else {
            uniqueNumbers.sorted { $0 > $1 }
        }
    }
    
    var body: some View {
        VStack {
            
            ForEach(numberDictionary.keys.sorted(), id: \.self) { key in
                Text("\(key) with value \(numberDictionary[key] ?? "")")
            }
            
            Divider()
            
            HStack {
                VStack {
                    ForEach(Array(uniqueNumbers ), id: \.self) { number in
                        Text("number : \(number)")
                    }
                }
                
                VStack {
                    
                    ForEach(sortedUniqueNumbers, id: \.self) { number in
                        Text("number : \(number)")
                    }
                }
            }
            
            Button {
                withAnimation {
                    let max = uniqueNumbers.max() ?? 0
                    uniqueNumbers.insert(max + 1)
                }
            } label: {
                Text("Add a number")
            }
            .buttonStyle(CustomButtonStyle())
            
            Toggle(isForwardSorted ? "Forward" : "Reversed", isOn: $isForwardSorted.animation())
        }
        .padding()
    }
    
}

#Preview {
    ForEachExampleView()
}

#Preview("Set and Dictionary") {
    UnorderedDataView()
}

