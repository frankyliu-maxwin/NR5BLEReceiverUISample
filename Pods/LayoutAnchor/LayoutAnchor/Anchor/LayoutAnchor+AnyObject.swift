//
//  LayoutAnchor+AnyObject.swift
//  LayoutAnchor
//
//  Created by Yume on 2017/11/15.
//  Copyright © 2017年 Yume. All rights reserved.
//

import UIKit

// left [= | ≥ | ≤] right + constant
@available(iOS 9.0, *)
extension LayoutAnchorExtension where Self == LayoutAnchor<NSLayoutAnchor<AnyObject>> {
    static public func == (left: Self, right: Self) -> NSLayoutConstraint {
        return left.anchor.constraint(equalTo: right.anchor, constant: right.constant)
    }
    
    static public func >= (left: Self, right: Self) -> NSLayoutConstraint {
        return left.anchor.constraint(greaterThanOrEqualTo: right.anchor, constant: right.constant)
    }
    
    static public func <= (left: Self, right: Self) -> NSLayoutConstraint {
        return left.anchor.constraint(lessThanOrEqualTo: right.anchor, constant: right.constant)
    }
}
