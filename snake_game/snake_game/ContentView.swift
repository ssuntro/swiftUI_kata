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
    @State private var inputImage: UIImage?
    var body: some View {
        VStack {
            image?
                .resizable()
                .scaledToFit()
            Button("Select Image") {
                self.showingImagePicker = true
            }
        }.sheet(isPresented: $showingImagePicker,
                onDismiss: loadImage,
                content: {
            ImagePicker(image: $inputImage)
        })
    }
    
    func loadImage() {
        guard let inputImage = inputImage else {
            return
        }
        image = Image(uiImage: inputImage)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
