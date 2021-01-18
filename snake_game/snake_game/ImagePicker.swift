//
//  ImagePicker.swift
//  snake_game
//
//  Created by Siroratt Suntronsuk on 18/1/2564 BE.
//

import SwiftUI
struct ImagePicker: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> UIImagePickerController {
        let picker = UIImagePickerController()
        return picker
    }
    
    func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) {
    }
    
}
