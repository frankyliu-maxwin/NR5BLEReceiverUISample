//
//  UIViewController+LayoutAttribute.swift
//  LayoutAnchor
//
//  Created by Yume on 2018/1/10.
//  Copyright © 2018年 Yume. All rights reserved.
//

import UIKit

public extension UIViewController {
    @available(iOS, introduced: 7.0, deprecated: 11.0, message: "Use view.safeAreaLayoutGuide.topAnchor instead of topLayoutGuide.bottomAnchor")
    public var topLayoutGuideAttribute : LayoutAttribute {
        return LayoutAttribute(view: topLayoutGuide, attribute: .bottom)
    }
    
    @available(iOS, introduced: 7.0, deprecated: 11.0, message: "Use view.safeAreaLayoutGuide.topAnchor instead of topLayoutGuide.bottomAnchor")
    public var bottomLayoutGuideAttribute : LayoutAttribute {
        return LayoutAttribute(view: bottomLayoutGuide, attribute: .top)
    }
}
