//
//  SafeAreaExampleView.swift
//  swiftyplaceLearming
//
//  Created by Авазбек Надырбек уулу on 2/14/26.
//

import SwiftUI

struct SafeAreaExampleView: View {
    var body: some View {
        
        Image(.fisch3)
            .resizable()
            .scaledToFill()
            .ignoresSafeArea(.container, edges: .all)
    }
}

#Preview {
    SafeAreaExampleView()
}
