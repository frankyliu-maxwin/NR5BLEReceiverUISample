//
//  UIView+LayoutAnchor.swift
//  LayoutAnchor
//
//  Created by Yume on 2017/11/15.
//  Copyright © 2017年 Yume. All rights reserved.
//

import UIKit

@available(iOS 9.0, *)
extension UIView: LayoutAnchorable {
    public var firstBaseline : LayoutAnchor<NSLayoutYAxisAnchor> {
        get { return LayoutAnchor(anchor: self.firstBaselineAnchor) }
    }
    public var lastBaseline : LayoutAnchor<NSLayoutYAxisAnchor> {
        get { return LayoutAnchor(anchor: self.lastBaselineAnchor) }
    }
}
