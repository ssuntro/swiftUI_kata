//
//  ContentView.swift
//  snake_game
//
//  Created by Siroratt Suntronsuk on 8/1/2564 BE.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        GetStartedView()
    }
}

struct GetStartedView: View {
    private enum SheetType: String, Identifiable {
        var id: String {
            return rawValue
        }
        case signIn, createAccount
    }
    @State private var type: SheetType? = nil
    
    var body: some View {
        VStack {
            Text("Get Started using Orbit")
            Button("Sign In") {
                self.type = .signIn
            }
            Button("Create Account") {
                self.type = .createAccount
            }
        }.sheet(item: $type) { type in
            NavigationView {
                switch type {
                case .signIn:
                    ContentView()
                case .createAccount:
                    ContentView()
                }
            }
            
        }
    }
}
