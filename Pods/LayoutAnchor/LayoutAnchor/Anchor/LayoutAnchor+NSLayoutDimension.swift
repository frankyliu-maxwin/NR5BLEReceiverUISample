//
//  LayoutAnchor+NSLayoutDimension.swift
//  LayoutAnchor
//
//  Created by Yume on 2017/11/15.
//  Copyright © 2017年 Yume. All rights reserved.
//

import UIKit

/// left [= | ≥ | ≤] right + constant
@available(iOS 9.0, *)
extension LayoutAnchorExtension where Self == LayoutAnchor<NSLayoutDimension> {
    static public func == (left: Self, right: Self) -> NSLayoutConstraint {
        return left.anchor.constraint(equalTo: right.anchor, multiplier: right.multiplier, constant: right.constant)
    }
    
    static public func >= (left: Self, right: Self) -> NSLayoutConstraint {
        return left.anchor.constraint(greaterThanOrEqualTo: right.anchor, multiplier: right.multiplier, constant: right.constant)
    }
    
    static public func <= (left: Self, right: Self) -> NSLayoutConstraint {
        return left.anchor.constraint(lessThanOrEqualTo: right.anchor, multiplier: right.multiplier, constant: right.constant)
    }
}

/// left [= | ≥ | ≤] constant
@available(iOS 9.0, *)
extension LayoutAnchorExtension where Self == LayoutAnchor<NSLayoutDimension> {
    static public func == (left: Self, constant: CGFloat) -> NSLayoutConstraint {
        return left.anchor.constraint(equalToConstant: constant)
    }
    
    static public func >= (left: Self, constant: CGFloat) -> NSLayoutConstraint {
        return left.anchor.constraint(greaterThanOrEqualToConstant: constant)
    }
    
    static public func <= (left: Self, constant: CGFloat) -> NSLayoutConstraint {
        return left.anchor.constraint(lessThanOrEqualToConstant: constant)
    }
}
