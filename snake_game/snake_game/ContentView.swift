//
//  ContentView.swift
//  snake_game
//
//  Created by Siroratt Suntronsuk on 8/1/2564 BE.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        CircleNumberView(color: .red, number: 1)
        Text("Hello, world!")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct CircleNumberView: View {
    var color: Color
    var number:Int
    
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 200, height: 200)
                .foregroundColor(color)
            Text("\(number)")
                .foregroundColor(.white)
                .font(.system(size: 70, weight: .bold))
        }
    }
}
