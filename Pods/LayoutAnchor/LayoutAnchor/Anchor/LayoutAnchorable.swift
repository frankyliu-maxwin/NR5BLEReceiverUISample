//
//  LayoutAnchorable.swift
//  LayoutAnchor
//
//  Created by Yume on 2017/11/16.
//  Copyright © 2017年 Yume. All rights reserved.
//

import UIKit

@available(iOS 9.0, *)
public protocol LayoutAnchorable:DefualtLayoutAnchorable {
    var leading : LayoutAnchor<NSLayoutXAxisAnchor> { get }
    var trailing : LayoutAnchor<NSLayoutXAxisAnchor>  { get }
    var left : LayoutAnchor<NSLayoutXAxisAnchor>  { get }
    var right : LayoutAnchor<NSLayoutXAxisAnchor>  { get }
    var centerX : LayoutAnchor<NSLayoutXAxisAnchor>  { get }
    
    var top : LayoutAnchor<NSLayoutYAxisAnchor> { get }
    var bottom : LayoutAnchor<NSLayoutYAxisAnchor> { get }
    var centerY : LayoutAnchor<NSLayoutYAxisAnchor> { get }
    
    var width : LayoutAnchor<NSLayoutDimension> { get }
    var height : LayoutAnchor<NSLayoutDimension> { get }
}

// MARK: xAxis
@available(iOS 9.0, *)
extension LayoutAnchorable {
    public var leading : LayoutAnchor<NSLayoutXAxisAnchor> {
        return LayoutAnchor(anchor: self.leadingAnchor)
    }
    public var trailing : LayoutAnchor<NSLayoutXAxisAnchor> {
         return LayoutAnchor(anchor: self.trailingAnchor)
    }
    public var left : LayoutAnchor<NSLayoutXAxisAnchor> {
         return LayoutAnchor(anchor: self.leftAnchor)
    }
    public var right : LayoutAnchor<NSLayoutXAxisAnchor> {
         return LayoutAnchor(anchor: self.rightAnchor)
    }
    public var centerX : LayoutAnchor<NSLayoutXAxisAnchor> {
         return LayoutAnchor(anchor: self.centerXAnchor)
    }
}

// MARK: yAxis
@available(iOS 9.0, *)
extension LayoutAnchorable {
    public var top : LayoutAnchor<NSLayoutYAxisAnchor> {
         return LayoutAnchor(anchor: self.topAnchor)
    }
    public var bottom : LayoutAnchor<NSLayoutYAxisAnchor> {
         return LayoutAnchor(anchor: self.bottomAnchor)
    }
    public var centerY : LayoutAnchor<NSLayoutYAxisAnchor> {
         return LayoutAnchor(anchor: self.centerYAnchor)
    }
}

// MARK: Dimension
@available(iOS 9.0, *)
extension LayoutAnchorable {
    public var width : LayoutAnchor<NSLayoutDimension> {
         return LayoutAnchor(anchor: self.widthAnchor)
    }
    public var height : LayoutAnchor<NSLayoutDimension> {
         return LayoutAnchor(anchor: self.heightAnchor)
    }
}
