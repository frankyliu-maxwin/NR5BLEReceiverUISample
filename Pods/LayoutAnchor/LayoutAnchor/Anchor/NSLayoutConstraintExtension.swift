//
//  NSLayoutConstraintExtension.swift
//  LayoutAnchor
//
//  Created by Yume on 2017/11/15.
//  Copyright © 2017年 Yume. All rights reserved.
//

import UIKit

@available(iOS 8.0, *)
extension NSLayoutConstraint {
    public func activate() {
        self.isActive = true
    }
    
    public func deactivate() {
        self.isActive = false
    }
}

@available(iOS 8.0, *)
extension Array where Element == NSLayoutConstraint {
    public func activate() {
        NSLayoutConstraint.activate(self)
    }
    public func deactivate() {
        NSLayoutConstraint.deactivate(self)
    }
}
