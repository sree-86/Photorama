//
//  PhotosViewController.swift
//  Photorama
//
//  Created by Sreeram Ramakrishnan on 2019-03-14.
//  Copyright © 2019 Centennial College. All rights reserved.
//

import Foundation
import UIKit

class PhotosViewController: UIViewController{
    @IBOutlet var imageView: UIImageView!
    var store: PhotoStore!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        store.fetchInterestingPhotos{
            (PhotosResult) -> Void in
            
            switch PhotosResult{
            case let .success(photos):
                print("Successfully found \(photos.count) photos.")
                if let firstPhoto = photos.first{
                    self.updateImageView(for: firstPhoto)
                }
            case let .failure(error):
                print("Error fetching interesting photos: \(error)")
            }
            
            
        }
    }
    
    
    
    func updateImageView(for photo: Photo) {
        store.fetchImage(for: photo) {
            (imageResult) -> Void in
            switch imageResult {
                case let .success(image):
                self.imageView.image = image
                case let .failure(error):
                print("Error downloading image: \(error)")
            }
        }
    }
}


