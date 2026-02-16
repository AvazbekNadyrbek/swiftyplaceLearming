//
//  MovieDetailView.swift
//  swiftyplaceLearming
//
//  Created by Авазбек Надырбек уулу on 2/10/26.
//

import SwiftUI

struct MovieDetailView: View {
    
    let superhero = SuperHero.example
    let headerSpacing: CGFloat = 20
    var body: some View {
        VStack {
            ZStack(alignment: .movieAlignment) {
                ResizableImageView(imageName: "spiderImageBG")
                
                HStack {
                    Image("spiderManavatar")
                        .resizable()
                        .scaledToFill()
                        .frame(maxWidth: 150, maxHeight: 200)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        
                    
                    VStack(alignment: .leading, spacing: headerSpacing) {
                        Text(superhero.name)
                            .font(.title)
                            .bold()
                            .foregroundStyle(Color(.white))
                            .alignmentGuide(.imageTitleAlignmentGuide, computeValue: { dimension in dimension[VerticalAlignment.bottom] + headerSpacing / 2
                            })
                        VStack(alignment: .leading) {
                            Text("★★★★☆")
                            Text("Action")
                                .font(.headline)
                            Text("1h 51m")
                        }
                        
                    }
                }
                .padding(.horizontal)
            }
            
            Text(superhero.biography)
                .padding()
            
            Spacer()
            
        }
    }
}

extension Alignment {
    static let movieAlignment = Alignment(horizontal: .leading, vertical: .imageTitleAlignmentGuide)
}

#Preview {
    MovieDetailView()
}
