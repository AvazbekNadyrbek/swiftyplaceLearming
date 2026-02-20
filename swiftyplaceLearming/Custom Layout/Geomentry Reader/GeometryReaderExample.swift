//
//  GeometryReaderExample.swift
//  swiftyplaceLearming
//
//  Created by Авазбек Надырбек уулу on 2/17/26.
//

import SwiftUI

struct GeometryReaderExample: View {
    
    
    let nameSpace: String = "nameSpace"
    
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            
            GeometryReader { geomentry in
                VStack(spacing: 0) {
                    HStack(spacing: 10) {
                        Text("local \(geomentry.frame(in: .local).minX) - \(geomentry.frame(in: .local).minY)")
                            .frame(width: (geomentry.size.width - 10) / 2, height: geomentry.size.height / 2)
                            .background(Color.yellow)
                        
                        Text("global \(geomentry.frame(in: .named(nameSpace)).minX) - \(geomentry.frame(in: .named(nameSpace)).minY)")
                            .frame(width: (geomentry.size.width - 10) / 2, height: geomentry.size.height / 2)
                            .background(Color.orange)
                    }
                    Image("fisch_3")
                        .resizable()
                        .scaledToFill()
                        .frame(width: geomentry.size.width / 2, height: geomentry.size.height / 2)
                        .clipped()
                }
                
            }
            .border(Color.black)
            .padding()
        }
        .coordinateSpace(name: nameSpace)
    }
}

fileprivate struct BadGeometryReaderExampleView: View {
    
    let inspirations = NatureInspiration.examples()
    
    var body: some View {
        GeometryReader { geomentry in
            
            ScrollView {
                LazyVStack(spacing: 15) {
                    ForEach(inspirations) { inspiration in
                        HStack(alignment: .center, spacing: 0) {
                            Image(inspiration.imageName)
                                .resizable()
                                .frame(width: geomentry.size.width / 3, height: geomentry.size.width / 3)
                                .cornerRadius(16)
                            
                            VStack(alignment: .leading) {
                                Text(inspiration.name)
                                    .font(.title2)
                                Text(inspiration.description)
                                    .font(.caption)
                            }
                            .padding()
                        }
                    }
                }
                .padding()
            }
            
            
        }
    }
}

fileprivate struct GeometryReaderExampleView: View {
    
    let inspirations = NatureInspiration.examples()
    
    var body: some View {
        GeometryReader { geomentry in
            
            ScrollView {
                LazyVStack(alignment: .leading, spacing: 10) {
                    ForEach(inspirations) { inspiration in
                        HStack(alignment: .top, spacing: 10) {
                            ImageAspectView(imageName: inspiration.imageName, frameAspectRatio: 1, cornerRadius: 15)
                                .frame(width: geomentry.size.width * 0.3)
                            
                            VStack(alignment: .leading, spacing: 5) {
                                Text(inspiration.name)
                                    .font(.title2)
                                Text(inspiration.description)
                                    .font(.caption)
                            }
                            .padding(.vertical, 12)
                        }
                    }
                }
                .padding()
            }
            
            
        }
    }
}


struct ContainerRelativeInspirationView: View {
    
    let inspirations = NatureInspiration.examples()
    
    var body: some View {
        GeometryReader { geomentry in
            ScrollView {
                LazyVStack(alignment: .leading, spacing: 10) {
                    ForEach(inspirations) { inspiration in
                        HStack(alignment: .top, spacing: 10) {
                            ImageAspectView(imageName: inspiration.imageName, frameAspectRatio: 1, cornerRadius: 15)
                                .containerRelativeFrame(.horizontal) { length, axis in
                                    length * 0.3
                                }
                            
                            VStack(alignment: .leading, spacing: 5) {
                                Text(inspiration.name)
                                    .font(.title2)
                                Text(inspiration.description)
                                    .font(.caption)
                            }
                            .padding(.vertical, 12)
                        }
                    }
                }
                .padding()
            }
            
            
        }
    }
}

#Preview {
    GeometryReaderExample()
}

#Preview("BadExample") {
    BadGeometryReaderExampleView()
}


#Preview("GoodExample") {
    GeometryReaderExampleView()
}

#Preview("ContainerRelativeView") {
    ContainerRelativeInspirationView()
}
