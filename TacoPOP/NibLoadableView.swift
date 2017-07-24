//
//  NibLoadableView.swift
//  TacoPOP
//
//  Created by Kyle Aquino on 7/24/17.
//  Copyright © 2017 Kyle Aquino. All rights reserved.
//

import UIKit

protocol NibLoadableView: class {}

extension NibLoadableView where Self: UIView {
    static var nibName: String {
        return String(describing: self)
    }
}
