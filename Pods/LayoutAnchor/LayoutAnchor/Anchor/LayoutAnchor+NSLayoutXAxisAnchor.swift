//
//  LayoutAnchor+NSLayoutXAxisAnchor.swift
//  LayoutAnchor
//
//  Created by Yume on 2017/11/15.
//  Copyright © 2017年 Yume. All rights reserved.
//

import UIKit

//receiver [= | ≥ | ≤] 'anchor' + 'multiplier' * system space,
@available(iOS 11.0, *)
extension LayoutAnchorExtension where Self == LayoutAnchor<NSLayoutXAxisAnchor> {
    public func equalToSystem(anchor:Self,multiplier: CGFloat) -> NSLayoutConstraint {
        return self.anchor.constraint(equalToSystemSpacingAfter: anchor.anchor, multiplier: multiplier)
    }
    public func greaterThanOrEqualToSystem(anchor:Self,multiplier: CGFloat) -> NSLayoutConstraint {
        return self.anchor.constraint(greaterThanOrEqualToSystemSpacingAfter: anchor.anchor, multiplier: multiplier)
    }
    public func lessThanOrEqualToSystem(anchor:Self,multiplier: CGFloat) -> NSLayoutConstraint {
        return self.anchor.constraint(lessThanOrEqualToSystemSpacingAfter: anchor.anchor, multiplier: multiplier)
    }
}

@available(iOS 10.0, *)
extension LayoutAnchorExtension where Self == LayoutAnchor<NSLayoutXAxisAnchor> {
    public func offset(anchor:Self) -> NSLayoutDimension {
        return self.anchor.anchorWithOffset(to: anchor.anchor)
    }
}

// left [= | ≥ | ≤] right + constant
@available(iOS 9.0, *)
extension LayoutAnchorExtension where Self == LayoutAnchor<NSLayoutXAxisAnchor> {
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
