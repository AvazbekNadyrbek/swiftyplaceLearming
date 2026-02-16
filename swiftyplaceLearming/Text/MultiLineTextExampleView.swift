//
//  MultiLineTextExampleView.swift
//  swiftyplaceLearming
//
//  Created by Авазбек Надырбек уулу on 2/12/26.
//

import SwiftUI

struct MultiLineTextExampleView: View {
    
    let text: String = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam fermentum vestibulum est. Cras rhoncus. Pellentesque habitant mobi tristique senectus et netus et malesuada fames ac turpis egestas."
    
    
    var body: some View { 
        
        VStack(spacing: 20) {
            Text(text)
            
            Text(text)
                .multilineTextAlignment(.center)
            
            Text(text)
                .multilineTextAlignment(.trailing)
        }

    }
}

#Preview {
    MultiLineTextExampleView()
}
