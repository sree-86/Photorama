//
//  PhotoDataSource.swift
//  Photorama
//
//  Created by Sreeram Ramakrishnan on 2019-03-21.
//  Copyright © 2019 Centennial College. All rights reserved.
//

import Foundation
class PhotoDataSource: NSObject, UICollectionViewDataSource{
    
    var photos = [Photo]()
    func collectionView( collectionView: UICollectionView, number0fItemsInSection section: Int) -> Int { return photos.count
    }
    func collectionView( collectionView: UICollectionView, cellForltemAt indexPath: IndexPath) -> UICollectionViewCell {
        let identifier = "UICollectionViewCell" let cell = collectionView.dequeueReusableCell(withReuseIdentifier: identifier, for: indexPath)
        return cell
    }


}
