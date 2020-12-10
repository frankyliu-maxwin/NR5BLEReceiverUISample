//
//  LayoutAttribute.swift
//  LayoutAnchor
//
//  Created by Yume on 2018/1/10.
//  Copyright © 2018年 Yume. All rights reserved.
//

import UIKit

public struct LayoutAttribute {
    var view: Any
    var attribute: NSLayoutConstraint.Attribute
    var multiplier: CGFloat
    var constant: CGFloat
    
    init(view:Any, attribute: NSLayoutConstraint.Attribute, constant:CGFloat = 0, multiplier:CGFloat = 1.0) {
        self.view = view
        self.attribute = attribute
        self.multiplier = multiplier
        self.constant = constant
    }
}
