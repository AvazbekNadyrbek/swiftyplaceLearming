//
//  PreferenceExampleVoew.swift
//  swiftyplaceLearming
//
//  Created by Авазбек Надырбек уулу on 2/18/26.
//

import SwiftUI

struct PreferenceExampleView: View {
    
    let inspirations = NatureInspiration.examples()
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(alignment: .leading, spacing: 10) {
                    ForEach(inspirations) { inspiration in
                        NavigationLink {
                            InspirationDetailsView(inspiration: inspiration)
                                .navigationTitle(inspiration.name)
                        } label: {
                            InspirationRow(inspiration: inspiration)
                        }
                        .buttonStyle(.plain)
                    }
                }
                .padding()
            }
            .navigationTitle("Inspirations")
        }
    }
}

#Preview {
    PreferenceExampleView()
}
