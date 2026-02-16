//
//  ColorGridView.swift
//  swiftyplaceLearming
//
//  Created by Авазбек Надырбек уулу on 2/11/26.
//

import SwiftUI

struct ColorGridView: View {
    var body: some View {
        Grid(alignment: .topLeading, horizontalSpacing: 0, verticalSpacing: 0) {
            GridRow(alignment: .center) {
                Color.red
                    .frame(width: 100, height: 100)
                Color.blue
                    .frame(width: 50, height: 50)
                Color.yellow
                    .frame(width: 100, height: 130)
            }
            
            GridRow(alignment: .bottom) {
                Color.red
                    .frame(width: 50, height: 50)
                Color.blue
                    .frame(width: 100, height: 100)
                    .gridColumnAlignment(.leading)
                Color.yellow
                    .frame(width: 10, height: 30)
                    .gridCellAnchor(.topTrailing)
            }
            
            GridRow(alignment: .center) {
                Color.red
                    .frame(width: 100, height: 103)
                Color.blue
                    .frame(width: 100, height: 100)
                Color.yellow
                    .frame(width: 50, height: 50)
                    .gridCellAnchor(.bottomTrailing)
                
            }
        }
    }
}

#Preview {
    ColorGridView()
}
