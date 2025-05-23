//
//  ImagePicker.swift
//  InstagramApp
//
//  Created by Encora on 22/04/25.
//

import Foundation
import SwiftUI

struct ImagePicker: UIViewControllerRepresentable {
    
    @Binding var pickedImage: Image?
    @Binding var showImagePicker: Bool
    @Binding var imageData: Data?
    
//    func makeCoordinator() -> ImagePicker.Coordinator {
//        Coordinator(parent: self)
//
//    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(parent: self)
    }
    
    func makeUIViewController(context: Context) -> UIImagePickerController {
        let picker = UIImagePickerController()
        picker.delegate = context.coordinator
        picker.allowsEditing = true
        return picker
    }
    
    func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) {
        
    }
    
}
class Coordinator: NSObject, UIImagePickerControllerDelegate, UINavigationControllerDelegate{
    
    var parent: ImagePicker
    
    init(parent: ImagePicker) {
        self.parent = parent
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        let uiImage = info[.editedImage] as! UIImage
        parent.pickedImage = Image(uiImage: uiImage)
        
        if let mediaData = uiImage.jpegData(compressionQuality: 0.5) {
            parent.imageData = mediaData
        }
        parent.showImagePicker = false
    }
}
