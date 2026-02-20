//
//  LayoutExampleView.swift
//  swiftyplaceLearming
//
//  Created by Авазбек Надырбек уулу on 2/19/26.
//

import SwiftUI

struct LayoutExampleView: View {
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            
            HStack {
                Text("First")
                    .padding()
                    .background(Color.yellow)
                Text("Second")
                    .padding()
                    .background(Color.blue)
            }
            
            CustomHStack {
                Text("First")
                    .padding()
                    .background(Color.orange)
                Text("Second")
                    .padding()
                    .background(Color.red)
            }
            .border(Color.black)
        }
    }
}

struct CustomHStack: Layout {
    
    let spacing: CGFloat = 0
    
    func sizeThatFits(proposal: ProposedViewSize, subviews: Subviews, cache: inout ()) -> CGSize {
        guard !subviews.isEmpty else { return .zero }
        
        return fullIntrinssicSize(subviews: subviews, for: proposal)
    }
    
    func placeSubviews(in bounds: CGRect, proposal: ProposedViewSize, subviews: Subviews, cache: inout ()) {
        
        guard !subviews.isEmpty else { return }
        
        for (index, subview) in subviews.enumerated() {
            subview.place(at: CGPoint(x: bounds.minX, y: bounds.minY), anchor: .topLeading ,proposal: ProposedViewSize(width: 100, height: 100))
        }
    }
    
    func totalSpacing(subviews: Subviews) -> CGFloat {
        var totalSpacing: CGFloat = 0
        if subviews.count > 0 {
            totalSpacing = spacing * CGFloat(subviews.count - 1)
        }
        
        return totalSpacing
    }
    
    func fullIntrinssicSize(subviews: Subviews, for proposal: ProposedViewSize) -> CGSize {
        
        let availableWidth = proposal.width ?? 0 - totalSpacing(subviews: subviews)
        
        let individualViewOffer = availableWidth / CGFloat(subviews.count)
        
        var viewSize = [CGSize]()
        
        for (index, subview) in subviews.enumerated() {
            let maxSize = subview.dimensions(in: .infinity)
            let idealSize = subview.dimensions(in: .unspecified)
            let minSize = subview.dimensions(in: .zero)
            let sizeThatFits = subview.sizeThatFits(.init(width:individualViewOffer, height: proposal.height))
        }
        
        return CGSize(width: 100, height: 100)
    }
}

#Preview {
    LayoutExampleView()
}
