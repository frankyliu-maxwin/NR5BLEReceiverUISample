//
//  LayoutAttribute+Operator.swift
//  LayoutAnchor
//
//  Created by Yume on 2018/1/10.
//  Copyright © 2018年 Yume. All rights reserved.
//

import UIKit

// MARK: left: LayoutAttribute, right: LayoutAttribute
extension LayoutAttribute {
    static private func generate(left: LayoutAttribute, right: LayoutAttribute, relation: NSLayoutConstraint.Relation) -> NSLayoutConstraint {
        return NSLayoutConstraint(
            item:left.view, attribute: left.attribute,
            relatedBy: relation,
            toItem: right.view, attribute: right.attribute,
            multiplier: right.multiplier,
            constant: right.constant
        )
    }
    
    static public func == (left: LayoutAttribute, right: LayoutAttribute) -> NSLayoutConstraint {
        return generate(left: left, right: right, relation: .equal)
    }
    
    static public func >= (left: LayoutAttribute, right: LayoutAttribute) -> NSLayoutConstraint {
        return generate(left: left, right: right, relation: .greaterThanOrEqual)
    }
    
    static public func <= (left: LayoutAttribute, right: LayoutAttribute) -> NSLayoutConstraint {
        return generate(left: left, right: right, relation: .lessThanOrEqual)
    }
}

// MARK: left: LayoutAttribute, right: constant
extension LayoutAttribute {
    static private func generate(left: LayoutAttribute, constant: CGFloat, relation: NSLayoutConstraint.Relation) -> NSLayoutConstraint {
        return NSLayoutConstraint(
            item:left.view, attribute: left.attribute,
            relatedBy: relation,
            toItem: nil, attribute: .notAnAttribute,
            multiplier: 1,
            constant: constant
        )
    }
    
    static public func == (left: LayoutAttribute, constant: CGFloat) -> NSLayoutConstraint {
        return generate(left: left, constant: constant, relation: .equal)
    }
    
    static public func <= (left: LayoutAttribute, constant: CGFloat) -> NSLayoutConstraint {
        return generate(left: left, constant: constant, relation: .greaterThanOrEqual)
    }
    
    static public func >= (left: LayoutAttribute, constant: CGFloat) -> NSLayoutConstraint {
        return generate(left: left, constant: constant, relation: .lessThanOrEqual)
    }
}
    
extension LayoutAttribute {
    static public func *(left: LayoutAttribute, right: CGFloat) -> LayoutAttribute {
        return LayoutAttribute(view:left.view, attribute: left.attribute, constant: 0, multiplier:right)
    }
    
    static public func +(left: LayoutAttribute, right: CGFloat) -> LayoutAttribute {
        return LayoutAttribute(view:left.view, attribute: left.attribute, constant: right, multiplier:left.multiplier)
    }
    
    static public func -(left: LayoutAttribute, right: CGFloat) -> LayoutAttribute {
        return LayoutAttribute(view:left.view, attribute: left.attribute, constant: -right, multiplier:left.multiplier)
    }
}
