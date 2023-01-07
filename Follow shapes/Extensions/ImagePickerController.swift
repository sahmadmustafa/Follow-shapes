//
//  ImagePicker.swift
//  Chat
//
//  Created by ConnectyCube team on 20/07/2018.
//  Copyright © 2018 ConnectyCube. All rights reserved.
//

import UIKit
import Photos

class ImagePickerController: NSObject {
    
    private lazy var imagePickerController: UIImagePickerController = {
        let imagePicker =  UIImagePickerController()
        imagePicker.delegate = self
        return imagePicker
    }()
    
    var completion: ((UIImage?) -> Void)?
//
//    func presentImagePiker(with sourceType: UIImagePickerController.SourceType, vc: UIViewController) {
//
//        func openSettings(with title: String, message: String) {
//
//            let actionSheet = UIAlertController(title: title, message: message, preferredStyle: .alert)
//            let open = UIAlertAction(title: "Open Settings".localizableString(), style: .default, handler: { (action) in
//                UIApplication.shared.open(URL(string: UIApplication.openSettingsURLString)!)
//            })
//
//            let cancel = UIAlertAction(title: "Cancel".localizableString(), style: .default, handler: { (action) in
//
//            })
//            actionSheet.addAction(cancel)
//            actionSheet.addAction(open)
//            vc.present(actionSheet, animated: true, completion: nil)
//        }
//
//        if UIImagePickerController.isSourceTypeAvailable(sourceType) {
//            self.imagePickerController.sourceType = sourceType
//        }
//
//        if self.imagePickerController.sourceType == .photoLibrary {
//
//            PHPhotoLibrary.requestAuthorization({ (status) in
//                DispatchQueue.main.async {
//                    if status == .notDetermined || status == .denied {
//                        openSettings(with: "Photos Access Disabled".localizableString(),
//                                     message: "You can allow access to Photos in Settings".localizableString())
//                    }
//                    else {
//                        vc.present(self.imagePickerController, animated: true)
//                    }
//                }
//            })
//        }
//        else if self.imagePickerController.sourceType == .camera {
//
//            AVCaptureDevice.requestAccess(for: .video, completionHandler: { granted in
//                DispatchQueue.main.async {
//                    if !granted {
//                        openSettings(with: "Camera Access Disabled".localizableString(),
//                                     message: "You can allow access to Camera in Settings".localizableString())
//                    }
//                    else {
//                        vc.present(self.imagePickerController, animated: true)
//                    }
//                }
//            })
//        }
//    }
    
//    func showActionSheet(vc: UIViewController, allowsEditing: Bool = true, completion: @escaping (UIImage?) -> Void) {
//        
//        self.completion = completion
//        self.imagePickerController.allowsEditing = allowsEditing
//        
//        
//        let actionSheet = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
//        let camera =
//            UIAlertAction(title: "Camera".localizableString(), style: .default, handler: { (alert:UIAlertAction!) -> Void in
//                self.presentImagePiker(with: .camera, vc: vc)
//            })
//        let gallery =
//            UIAlertAction(title: "Gallery".localizableString(), style: .default, handler: { (alert:UIAlertAction!) -> Void in
//                self.presentImagePiker(with: .photoLibrary, vc: vc)
//            })
//        let cancel =
//            UIAlertAction(title: "Cancel".localizableString(), style: .cancel, handler: nil)
//
//        actionSheet.addAction(camera)
//        actionSheet.addAction(gallery)
//        actionSheet.addAction(cancel)
//
//        vc.present(actionSheet, animated: true, completion: nil)
//    }
}

// MARK: - UIImagePickerController

extension ImagePickerController : UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            completion!(image)
        }
        if let image = info[UIImagePickerController.InfoKey.editedImage] as? UIImage {
            completion!(image)
        }
        picker.dismiss(animated: true)
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        completion!(nil)
        picker.dismiss(animated: true)
    }
}
