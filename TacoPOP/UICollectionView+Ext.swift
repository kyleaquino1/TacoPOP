//
//  UICollectionView+Ext.swift
//  TacoPOP
//
//  Created by Kyle Aquino on 7/24/17.
//  Copyright © 2017 Kyle Aquino. All rights reserved.
//

import UIKit

extension UICollectionView {
    
    func register<T: UICollectionViewCell>(_: T.Type) where T: ReusableView, T: NibLoadableView {
        
        let nib = UINib(nibName: T.nibName, bundle: nil)
        register(nib, forCellWithReuseIdentifier: T.reuseIdentifier)
        
    }
    
    func dequeueReusableCell<T: UICollectionViewCell>(forIndexPath indexPath: IndexPath) -> T where T: ReusableView {
        
        guard let cell = dequeueReusableCell(withReuseIdentifier: T.reuseIdentifier, for: indexPath) as? T else {
            fatalError("Could not dequeue cell with identifier")
        }
        return cell
    }
    
    
    
}

extension UICollectionViewCell: ReusableView {}
