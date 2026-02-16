//
//  TextLimitedSpaceExampleView.swift
//  swiftyplaceLearming
//
//  Created by Авазбек Надырбек уулу on 2/12/26.
//

import SwiftUI

struct TextLimitedSpaceExampleView: View {
    
    let superhero = SuperHero.example
    
    var body: some View {
        VStack(spacing: 30) {
            Text(superhero.name)
                .font(.title)
            Text(superhero.biography)
                .lineLimit(2)
            
            Text(superhero.biography)
                .lineLimit(2)
                .truncationMode(.middle)
            
            Text(superhero.biography)
                .lineLimit(2)
                .truncationMode(.head)
            
            Text(superhero.biography)
                .lineLimit(2)
                .allowsTightening(true)
            
            Text(superhero.biography)
                .frame(height: 70)
                .minimumScaleFactor(0.75)
        }
    }
}

#Preview {
    TextLimitedSpaceExampleView()
}
