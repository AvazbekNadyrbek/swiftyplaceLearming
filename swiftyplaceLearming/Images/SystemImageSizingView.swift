//
//  SystemImageSizingView.swift
//  swiftyplaceLearming
//
//  Created by Авазбек Надырбек уулу on 2/13/26.
//

import SwiftUI

struct SystemImageSizingView: View {
    
    @ScaledMetric var size: CGFloat = 20
    
    var body: some View {
        VStack(spacing: 10) {
            Label("Swift", systemImage: "swift")
                .foregroundStyle(.red)
                .imageScale(.large)
            
            Image(systemName: "checkmark.circle")
                .foregroundStyle(Color.blue, Color.red)
            
            HStack {
                Image(systemName: "gear")
                    .font(.title)
                
                Image(systemName: "gear")
                    .font(.system(size: 20))
                
                Image(systemName: "gear")
                    .font(.system(size: 20))
                    .bold()
            }
            
            HStack {
                Image(systemName: "arrow.2.circlepath.circle")
                    .imageScale(.small)
                
                Image(systemName: "arrow.2.circlepath.circle")
                    .imageScale(.medium)
                
                Image(systemName: "arrow.2.circlepath.circle")
                    .imageScale(.large)
            }
            
            HStack {
                Image(systemName: "lasso.badge.sparkles")
                    .font(.title)
                
                Image(systemName: "lasso.badge.sparkles")
                    .font(.system(size: 20))
                    .border(Color.yellow)
                
                Image(systemName: "lasso.badge.sparkles")
                    .resizable()
                    .frame(width: size, height: size)
                    .border(Color.yellow)
                
                Color.accentColor
                    .frame(width: 30, height: 30)
            }
            

        }
    }
}

fileprivate struct GruopedSystemImagesExampleView: View {
    
    let icons = ["lasso.badge.sparkles", "square.and.arrow.up", "square.and.pencil.circle", "doc.on.doc", "doc.on.doc", "pencil.tip", "line.diagonal.arrow", "arrow.up.left", "arrow.left"]
    
    
    
    var body: some View {
        HStack {
            VStack {
                ForEach(icons, id: \.self) { iconName in
                    Button {
                        
                    } label: {
                        Image(systemName: iconName)
                            .border(Color.red)
                    }
                    .buttonBorderShape(.circle)
                    .buttonStyle(.borderedProminent)
                    
                }
            }
            
            VStack {
                ForEach(icons, id: \.self) { iconName in
                    Button {
                        
                    } label: {
                        Image(systemName: iconName)
                            .resizable()
                            .frame(width: 16, height: 16)
                            .padding(2)
                            //.border(Color.red)
                    }
                    .buttonBorderShape(.circle)
                    .buttonStyle(.borderedProminent)
                    
                }
            }
            
            VStack {
                ForEach(icons, id: \.self) { iconName in
                    Button {
                        
                    } label: {
                        Image(systemName: iconName)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                            //.border(Color.red)
                    }
                    .buttonBorderShape(.circle)
                    .buttonStyle(.borderedProminent)
                    
                }
            }
            
        }
    }
}

#Preview {
    SystemImageSizingView()
}

#Preview("Grouped System Images") {
    GruopedSystemImagesExampleView()
}
