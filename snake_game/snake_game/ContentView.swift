//
//  ContentView.swift
//  snake_game
//
//  Created by Siroratt Suntronsuk on 8/1/2564 BE.
//

import SwiftUI

struct ContentView: View {
    @State private var image: Image?
    @State private var showingImagePicker = false
    
    var body: some View {
        VStack {
            image?
                .resizable()
                .scaledToFit()
            Button("Select Image") {
                self.showingImagePicker = true
            }
        }.sheet(isPresented: $showingImagePicker, content: {
            ImagePicker()
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
