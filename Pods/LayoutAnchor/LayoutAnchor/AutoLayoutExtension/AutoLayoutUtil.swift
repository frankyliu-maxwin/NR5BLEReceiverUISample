//
//  AutoLayoutUtil.swift
//  LayoutAnchor
//
//  Created by Yume on 2018/1/11.
//  Copyright © 2018年 Yume. All rights reserved.
//

import UIKit

public struct AutoLayoutUtil {}

extension AutoLayoutUtil {
    public static func match(parent: UIView, child: UIView, offset:UIEdgeInsets = UIEdgeInsets(), isSafeArea: Bool = true) -> [NSLayoutConstraint] {
        if #available(iOS 11.0, *) {
            let anchorable = AutoLayoutUtil.anchorable(view: parent, isSafeArea: isSafeArea)
            return [
                anchorable.top == child.top - offset.top,
                anchorable.bottom == child.bottom + offset.bottom,
                anchorable.trailing == child.trailing - offset.right,
                anchorable.leading == child.leading + offset.left
            ]
        } else {
            return [
                parent.topAttribute == child.topAttribute - offset.top,
                parent.bottomAttribute == child.bottomAttribute + offset.bottom,
                parent.trailingAttribute == child.trailingAttribute + offset.right,
                parent.leadingAttribute == child.leadingAttribute - offset.left
            ]
        }
    }
}

// MARK: 靠齊左右
extension AutoLayoutUtil {
    @available(iOS 11.0, *)
    private static func anchorable(view: UIView, isSafeArea: Bool = true) -> LayoutAnchorable {
        return isSafeArea ? view.safeAreaLayoutGuide : view
    }
    
    private static func matchTopBottom(vc: UIViewController,view: UIView, isSafeArea: Bool = true) -> [NSLayoutConstraint] {
        if #available(iOS 11.0, *) {
            let anchorable = AutoLayoutUtil.anchorable(view: vc.view, isSafeArea: isSafeArea)
            return [
                anchorable.top == view.top,
                anchorable.bottom == view.bottom
            ]
        } else {
            return [
                vc.topLayoutGuideAttribute == view.topAttribute,
                vc.bottomLayoutGuideAttribute == view.bottomAttribute
            ]
        }
    }

    public static func alignLeft(vc:UIViewController,view:UIView,width:CGFloat,offset:CGFloat = 0, isSafeArea: Bool = true) -> [NSLayoutConstraint] {
        let topBottom = AutoLayoutUtil.matchTopBottom(vc: vc, view: view, isSafeArea: isSafeArea)
        if #available(iOS 11.0, *) {
            let anchorable = AutoLayoutUtil.anchorable(view: vc.view, isSafeArea: isSafeArea)
            let result = [
                anchorable.leading == view.leading - offset,
                view.width == width
            ]
            return result + topBottom
        } else {
            let result = [
                vc.view.leadingAttribute == view.leadingAttribute - offset,
                view.widthAttribute == width
            ]
            return result + topBottom
        }
    }

    public static func alignRight(vc:UIViewController,view:UIView,width:CGFloat,offset:CGFloat = 0, isSafeArea: Bool = true) -> [NSLayoutConstraint] {
        
        let topBottom = AutoLayoutUtil.matchTopBottom(vc: vc, view: view, isSafeArea: isSafeArea)
        if #available(iOS 11.0, *) {
            let anchorable = AutoLayoutUtil.anchorable(view: vc.view, isSafeArea: isSafeArea)
            let result = [
                anchorable.trailing == view.trailing + offset,
                view.width == width
            ]
            return result + topBottom
        } else {
            let result = [
                vc.view.trailingAttribute == view.trailingAttribute + offset,
                view.widthAttribute == width
            ]
            return result + topBottom
        }
    }
}

// MARK: 靠齊上下
extension AutoLayoutUtil {
    private static func matchLeadTrail(vc: UIViewController, view: UIView, isSafeArea: Bool = true) -> [NSLayoutConstraint] {
        if #available(iOS 11.0, *) {
            let anchorable = AutoLayoutUtil.anchorable(view: vc.view, isSafeArea: isSafeArea)
            return [
                anchorable.leading == view.leading,
                anchorable.trailing == view.trailing
            ]
        } else {
            return [
                vc.view.leadingAttribute == view.leadingAttribute,
                vc.view.trailingAttribute == view.trailingAttribute
            ]
        }
    }

    public static func alignTop(vc: UIViewController, view: UIView, height: CGFloat, offset: CGFloat = 0, isSafeArea: Bool = true) -> [NSLayoutConstraint] {
        let LeadTrail = AutoLayoutUtil.matchLeadTrail(vc: vc, view: view, isSafeArea: isSafeArea)
        if #available(iOS 11.0, *) {
            let anchorable = AutoLayoutUtil.anchorable(view: vc.view, isSafeArea: isSafeArea)
            let result = [
                anchorable.top == view.top - offset,
                view.height == height
            ]
            return result + LeadTrail
        } else {
            let result = [
                vc.view.topAttribute == view.topAttribute - offset,
                view.heightAttribute == height
            ]
            return result + LeadTrail
        }
    }

    public static func alignBottom(vc: UIViewController,view: UIView, height: CGFloat, offset: CGFloat = 0, isSafeArea: Bool = true) -> [NSLayoutConstraint] {
        let LeadTrail = AutoLayoutUtil.matchLeadTrail(vc: vc, view: view, isSafeArea: isSafeArea)
        if #available(iOS 11.0, *) {
            let anchorable = AutoLayoutUtil.anchorable(view: vc.view, isSafeArea: isSafeArea)
            let result = [
                anchorable.bottom == view.bottom + offset,
                view.height == height
            ]
            return result + LeadTrail
        } else {
            let result = [
                vc.view.bottomAttribute == view.bottomAttribute + offset,
                view.heightAttribute == height
            ]
            return result + LeadTrail
        }
        
    }
}
