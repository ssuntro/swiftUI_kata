//
//  ImagePicker.swift
//  snake_game
//
//  Created by Siroratt Suntronsuk on 18/1/2564 BE.
//

import SwiftUI
struct ImagePicker: UIViewControllerRepresentable {
    class Coordinator: NSObject,
                       UIImagePickerControllerDelegate,
                       UINavigationControllerDelegate {
        
    }
    func makeCoordinator() -> Coordinator {
        Coordinator()
    }
    func makeUIViewController(context: Context) -> UIImagePickerController {
        let picker = UIImagePickerController()
        picker.delegate = context.coordinator
        return picker
    }
    
    func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) {
    }
    
}
