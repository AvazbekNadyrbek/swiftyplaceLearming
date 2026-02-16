//
//  MarvelView.swift
//  swiftyplaceLearming
//
//  Created by Авазбек Надырбек уулу on 2/14/26.
//

import SwiftUI

struct MarvelView: View {
    
    let superHero: SuperHero
    
    var body: some View {
        ZStack(alignment: .top) {
            Image(superHero.imageName)
                .renderingMode(.template)
                .resizable()
                .scaledToFit()
                .foregroundStyle(LinearGradient(colors: [Color.white, Color.black], startPoint: .top, endPoint: .bottomLeading))
                .frame(maxWidth: .infinity, maxHeight: 600, alignment: .topTrailing)
                .frame(maxHeight: .infinity, alignment: .top)
                .background(Color.black.gradient)
            
            ScrollView {
                VStack(alignment: .leading, spacing: 10) {
                    Text(superHero.name)
                        .font(.largeTitle)
                        .bold()
                    
                    Text("Biography")
                        .bold()
                        .padding(.top)
                    
                    Text(superHero.biography)
                    
                    Text("Quotes")
                        .bold()
                        .padding(.top)
                    
                    VStack {
                        ForEach(Array(superHero.quotes.enumerated()), id: \.offset) { (index, quote) in
                            Text(quote)
                                .italic()
                                .padding(15)
                                .background(.ultraThinMaterial)
                                .cornerRadius(10)
                                .padding(index.isOdd ? .leading : .trailing, 50)
                                .frame(maxWidth: .infinity, alignment: index.isOdd ? .trailing : .leading)
                        }
                    }
                    .padding(.leading)
                }
                .foregroundStyle(.white)
                .padding()
                .padding(.top, 200)
            }
            .frame(maxWidth: 600)

        }

    }
}

extension Int {
    var isEven: Bool {
        return self % 2 == 0
    }

    var isOdd: Bool {
        return self % 2 != 0
    }
}

#Preview {
    MarvelView(superHero: SuperHero.example)
}
