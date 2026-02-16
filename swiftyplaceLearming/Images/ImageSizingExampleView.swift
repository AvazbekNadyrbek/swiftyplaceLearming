//
//  ImageSizingExampleView.swift
//  swiftyplaceLearming
//
//  Created by Авазбек Надырбек уулу on 2/13/26.
//

import SwiftUI

struct ImageSizingExampleView: View {
    var body: some View {
        Image("mont-blanc")
    }
}

fileprivate struct ImageFitScalingView: View {
    var body: some View {
        Image("mont-blanc")
            .resizable()
//            .aspectRatio(contentMode: .fit)
            .scaledToFit()
    }
}

fileprivate struct ImageFillScalingView: View {
    var body: some View {
        Image("mont-blanc")
            .resizable()
//            .aspectRatio(contentMode: .fill)
            .scaledToFill()
            .ignoresSafeArea()
    }
}

fileprivate struct ImageFrameScalingView: View {
    var body: some View {
        VStack {
            Image(.spiderImageBG)
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .background(.black)
            
            Image(.fisch3)
                .resizable()
                .scaledToFill()
                .frame(width: 200, height: 200, alignment: .trailing)
                .border(Color.red, width: 5)
            
            Image(.fisch3)
                .resizable()
                .scaledToFill()
                .frame(width: 200, height: 200)
                .border(Color.black, width: 5)
                .clipped()
            
        }
    }
}


#Preview {
    ImageSizingExampleView()
}

#Preview("Ideal") {
    ImageFitScalingView()
}

#Preview("Fill") {
    ImageFillScalingView()
}

#Preview("Frame") {
    ImageFrameScalingView()
}



