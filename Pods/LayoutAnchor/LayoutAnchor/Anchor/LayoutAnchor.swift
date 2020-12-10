//
//  LayoutAnchor.swift
//  LayoutAnchor
//
//  Created by Yume on 2017/11/15.
//  Copyright © 2017年 Yume. All rights reserved.
//

import UIKit

@available(iOS 9.0, *)
public struct LayoutAnchor<AnchorType> {
    let anchor: AnchorType
    let multiplier:CGFloat
    let constant:CGFloat
    
    init(anchor:AnchorType, constant:CGFloat = 0, multiplier:CGFloat = 1.0) {
        self.anchor = anchor
        self.multiplier = multiplier
        self.constant = constant
    }
}

@available(iOS 9.0, *)
extension LayoutAnchor where AnchorType == NSLayoutDimension {
    static public func *(left: LayoutAnchor<AnchorType>, multiplier: CGFloat) -> LayoutAnchor<AnchorType> {
        return LayoutAnchor<AnchorType>(
            anchor: left.anchor,
            constant: left.constant,
            multiplier: multiplier
        )
    }
}

@available(iOS 9.0, *)
extension LayoutAnchor {
    static public func +(left: LayoutAnchor<AnchorType>, constant: CGFloat) -> LayoutAnchor<AnchorType> {
        return LayoutAnchor<AnchorType>(
            anchor: left.anchor,
            constant: constant,
            multiplier: left.multiplier
        )
    }
    
    static public func -(left: LayoutAnchor<AnchorType>, constant: CGFloat) -> LayoutAnchor<AnchorType> {
        return LayoutAnchor<AnchorType>(
            anchor: left.anchor,
            constant: -constant,
            multiplier: left.multiplier
        )
    }
}
