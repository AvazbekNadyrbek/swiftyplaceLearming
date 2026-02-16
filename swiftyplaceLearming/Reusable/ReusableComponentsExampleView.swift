//
//  ReusableComponentsExampleView.swift
//  swiftyplaceLearming
//
//  Created by Авазбек Надырбек уулу on 2/15/26.
//

import SwiftUI

struct ReusableComponentsExampleView: View {
    
    let isLoggedIn: Bool = false
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("How to organize and structure your code")
                .font(.title)
            
            Divider()
            
            MySubView(isLoggedIn: isLoggedIn)
            
            logInStateView
                .border(Color.gray)
            
            logInStateView2
                .border(Color.red)
        }
        .padding()
    }
    
    var logInStateView: some View {
        Group {
            if isLoggedIn {
               Label("You are logged in", systemImage: "person")
            } else {
                Text("You need to log in")
            }
        }
    }
    
    @ViewBuilder
    var logInStateView2: some View {
        if isLoggedIn {
            Label("You are logged in", systemImage: "person")
        } else {
            Text("You need to log in")
        }
    }
    
    @ViewBuilder
    func createLogginInfo() -> some View {
        if isLoggedIn {
            Label("You are logged in", systemImage: "person")
        } else {
            Text("You need to log in")
        }
    }
    
}

// extract subview
struct MySubView: View {
    
    let isLoggedIn: Bool
    
    var body: some View {
        if isLoggedIn {
           Label("You are logged in", systemImage: "person")
        } else {
            Text("You need to log in")
        }
    }
}

#Preview {
    ReusableComponentsExampleView()
}
