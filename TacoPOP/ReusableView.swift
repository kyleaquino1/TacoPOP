//
//  ReusableView.swift
//  TacoPOP
//
//  Created by Kyle Aquino on 7/24/17.
//  Copyright © 2017 Kyle Aquino. All rights reserved.
//

import UIKit

protocol ReusableView: class {}

extension ReusableView where Self: UIView {
    
    static var reuseIdentifier: String {
        return String(describing: self)
    }
    
}
