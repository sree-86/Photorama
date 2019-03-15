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
    var store: Photostore
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        store.fetchInterestingPhotos()
    }
}


