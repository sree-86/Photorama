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

    @IBOutlet weak var collectionView: UICollectionView!
    
    var store: PhotoStore!
    let photoDataSource = PhotoDataSource()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = photoDataSource
        
        store.fetchInterestingPhotos{
            (PhotosResult) -> Void in
            
            switch PhotosResult{
            case let .success(photos):
                print("Successfully found \(photos.count) photos.")
                self.photoDataSource.photos = photos
            case let .failure(error):
                print("Error fetching interesting photos: \(error)")
                self.photoDataSource.photos.removeAll()

            }
            self.collectionView.reloadSections(IndexSet(integer: 0))
            
        }
    }
    
    
    
}


