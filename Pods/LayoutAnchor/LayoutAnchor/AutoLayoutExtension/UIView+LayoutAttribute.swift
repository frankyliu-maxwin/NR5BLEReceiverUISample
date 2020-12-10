//
//  UIView+LayoutAttribute.swift
//  LayoutAnchor
//
//  Created by Yume on 2018/1/10.
//  Copyright © 2018年 Yume. All rights reserved.
//

import UIKit

public extension UIView {
    public var widthAttribute : LayoutAttribute {
        return LayoutAttribute(view: self, attribute : .width)
    }
    
    public var heightAttribute : LayoutAttribute {
        return LayoutAttribute(view: self, attribute : .height)
    }
    
    public var leadingAttribute : LayoutAttribute {
        return LayoutAttribute(view: self, attribute : .leading)
    }
    
    public var trailingAttribute : LayoutAttribute {
        return LayoutAttribute(view: self, attribute : .trailing)
    }
    
    public var topAttribute : LayoutAttribute {
        return LayoutAttribute(view: self, attribute : .top)
    }
    
    public var bottomAttribute : LayoutAttribute {
        return LayoutAttribute(view: self, attribute : .bottom)
    }
    
    public var centerXAttribute : LayoutAttribute {
        return LayoutAttribute(view: self, attribute : .centerX)
    }
    
    public var centerYAttribute : LayoutAttribute {
        return LayoutAttribute(view: self, attribute : .centerY)
    }
}
