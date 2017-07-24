//
//  DropShadow.swift
//  TacoPOP
//
//  Created by Kyle Aquino on 7/24/17.
//  Copyright © 2017 Kyle Aquino. All rights reserved.
//

import UIKit

protocol DropShadow {}


extension DropShadow where Self: UIView {
    
    func addDropShadow() {
        
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.7
        layer.shadowOffset = CGSize.zero
        layer.shadowRadius = 5.0
        
        
    }
    
}



























