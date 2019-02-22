//
//  MyCustomShadowView.swift
//  Tawasy
//
//  Created by Admin on 2/21/19.
//  Copyright © 2019 mariamelnezamy. All rights reserved.
//

import Foundation
import UIKit
class MyCustomShadowView: UIView {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.layer.shadowColor = UIColor.gray.cgColor
        self.layer.shadowRadius = 5
        self.layer.shadowOpacity = 1
        self.layer.shadowOffset = CGSize(width: -3, height: -3)
    }
}
