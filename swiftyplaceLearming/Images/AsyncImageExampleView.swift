//
//  AsyncImageExampleView.swift
//  swiftyplaceLearming
//
//  Created by Авазбек Надырбек уулу on 2/13/26.
//

import SwiftUI

struct AsyncImageExampleView: View {
    
    let baseURL = "https://picsum.photos/id/12/"
    

    @Environment(\.displayScale) var scale
    let size: CGFloat = 200
    
    var urlString: String {
        baseURL + "\(Int(size * scale))"
    }
    
    var body: some View {
        VStack {
            AsyncImage(url: URL(string: "https://picsum.photos/id/12/200"))
            
            AsyncImage(url: URL(string: urlString)) { image in
                image.resizable()
            } placeholder: {
                ProgressView()
            }
            .frame(width: size, height: size)
            
            AsyncImage(url: URL(string: urlString),
                       scale: 3,
                       transaction: .init(animation: .bouncy())) { phase in
                switch phase {
                case .empty:
                    ZStack {
                        ProgressView()
                    }
                case .success(let image):
                    image.resizable()
                case .failure(let error):
                    Text(error.localizedDescription)
                @unknown default:
                    EmptyView()
                }
            }
            .frame(width: size, height: size)
        }
    }
}

fileprivate struct SizedAsyncImageExampleView: View {
    
    let baseURL = "https://picsum.photos/id/12/"
    

    @Environment(\.displayScale) var scale
    
    var body: some View {
        GeometryReader { geometry in
            AsyncImage(url: url(in: geometry.size.width),
                       scale: 3,
                       transaction: .init(animation: .bouncy())) { phase in
                switch phase {
                case .empty:
                    ZStack {
                        Color.gray
                        ProgressView()
                    }
                case .success(let image):
                    image.resizable()
                case .failure(let error):
                    Text(error.localizedDescription)
                @unknown default:
                    EmptyView()
                }
            }
                       .frame(width: geometry.size.width, height: geometry.size.width)
        }
    }
    
    func url(in width: CGFloat) -> URL? {
        let imageWidth = width * scale
        let urlString = baseURL + "\(Int(imageWidth))"
        return URL(string: urlString)
    }
    
}


#Preview {
    AsyncImageExampleView()
}

#Preview("Scale rto fit") {
    SizedAsyncImageExampleView()
}
