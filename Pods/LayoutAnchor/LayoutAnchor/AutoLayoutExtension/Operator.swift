//
//  Operator.swift
//  LayoutAnchor
//
//  Created by Yume on 2018/1/11.
//  Copyright © 2018年 Yume. All rights reserved.
//

import UIKit

// 125
precedencegroup YumeComparisonAssignmentPrecedence {
    associativity: left
    lowerThan: ComparisonPrecedence             // 130
    higherThan: LogicalConjunctionPrecedence    // 120
}

infix operator <~ : YumeComparisonAssignmentPrecedence
extension NSLayoutConstraint {
    static public func <~ (left: NSLayoutConstraint, right: UILayoutPriority) -> NSLayoutConstraint {
        left.priority = right
        return left
    }
}

infix operator <- : AssignmentPrecedence
extension UIView {
    static public func <- (left: UIView, right: NSLayoutConstraint)  {
        left.addConstraint(right)
    }
}
