//
//  ImageSaver.swift
//  Instafilter
//
//  Created by Takasur Azeem on 05/07/2022.
//

import UIKit

class ImageSaver: NSObject {
    
    func writeToPhotoAlbum(image: UIImage) {
        UIImageWriteToSavedPhotosAlbum(image, self, #selector(saveCompleted(_:didFinishSavingWithError:contextInfo:)), nil)
    }
    
    @objc private func saveCompleted(_ image: UIImage, didFinishSavingWithError error: Error?, contextInfo: UnsafeRawPointer) {
        print("Save finished")
    }
    
}
