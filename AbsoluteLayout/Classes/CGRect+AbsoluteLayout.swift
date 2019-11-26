//
//  CGRect+AbsoluteLayout.swift
//  AbsoluteLayout
//
//  Created by 杨建祥 on 2019/11/26.
//

import UIKit

extension CGRect {
    
    // MARK: - Position
    public var al_x: CGFloat {
        get { return origin.x }
        set { origin.x = snap(newValue) }
    }

    public var al_y: CGFloat {
        get { return origin.y }
        set { origin.y = snap(newValue) }
    }
    
    public var al_centerX: CGFloat {
        get { return origin.x + size.width / 2 }
        set { al_x = newValue - size.width / 2 }
    }

    public var al_centerY: CGFloat {
        get { return origin.y + size.height / 2 }
        set { al_y = newValue - size.height / 2 }
    }

    public var al_center: CGPoint {
        get { return CGPoint(x: al_centerX, y: al_centerY) }
        set { al_centerX = newValue.x; al_centerY = newValue.y }
    }
    
    // MARK: - Size
    public var al_width: CGFloat {
        get { return size.width }
        set { size.width = snap(newValue) }
    }

    public var al_height: CGFloat {
        get { return size.height }
        set { size.height = snap(newValue) }
    }
    
    // MARK: - Edges
    public var al_left: CGFloat {
        get { return origin.x }
        set { al_x = newValue }
    }
    
    public var al_right: CGFloat {
        get { return origin.x + size.width }
        set { al_x = newValue - size.width }
    }
    
    public var al_top: CGFloat {
        get { return origin.y }
        set { al_y = newValue }
    }

    public var al_bottom: CGFloat {
        get { return origin.y + size.height }
        set { al_y = newValue - size.height }
    }

    // MARK: - Alternative Edges
    public var alternativeLeft: CGFloat {
        get { return origin.x }
        set {
            if newValue <= al_right {
                size.width += snap(al_left - newValue)
                al_x = newValue
            } else {
                // Swap right with left.
                let newLeft = al_right
                size.width = snap(newValue - newLeft)
                al_x = newLeft
            }
        }
    }
    
    public var alternativeRight: CGFloat {
        get { return origin.x + size.width }
        set {
            if newValue >= al_left {
                size.width += snap(newValue - al_right)
            } else {
                // Swap left with right.
                let newRight = al_left
                size.width = snap(newRight - newValue)
                al_x = newValue
            }
        }
    }
    
    public var alternativeTop: CGFloat {
        get { return origin.y }
        set {
            if newValue <= al_bottom {
                size.height += snap(al_top - newValue)
                al_y = newValue
            } else {
                // Swap top with bottom.
                let newTop = al_bottom
                size.height = snap(newValue - newTop)
                al_y = newTop
            }
        }
    }

    public var alternativeBottom: CGFloat {
        get { return origin.y + size.height }
        set {
            if newValue >= al_top {
                size.height += snap(newValue - al_bottom)
            } else {
                // Swap bottom with top.
                let newBottom = al_top
                size.height = snap(newBottom - newValue)
                al_y = newValue
            }
        }
    }
    
}
