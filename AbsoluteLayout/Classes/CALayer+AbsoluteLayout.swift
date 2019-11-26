//
//  CALayer+AbsoluteLayout.swift
//  AbsoluteLayout
//
//  Created by 杨建祥 on 2019/11/26.
//

import UIKit

extension CALayer {

    // MARK: - Position
    public var al_origin: CGPoint {
        get { return frame.origin }
        set { al_x = newValue.x; al_y = newValue.y }
    }

    public var al_x: CGFloat {
        get { return frame.al_x }
        set { frame.al_x = newValue }
    }

    public var al_y: CGFloat {
        get { return frame.al_y }
        set { frame.al_y = newValue }
    }

    public var al_center: CGPoint {
        get { return frame.al_center }
        set { frame.al_center = newValue }
    }

    public var al_centerX: CGFloat {
        get { return frame.al_centerX }
        set { frame.al_centerX = newValue }
    }

    public var al_centerY: CGFloat {
        get { return frame.al_centerY }
        set { frame.al_centerY = newValue }
    }

    // MARK: - Size
    public var al_size: CGSize {
        get { return frame.size }
        set { al_width = newValue.width; al_height = newValue.height}
    }

    public var al_width: CGFloat {
        get { return frame.size.width }
        set { frame.size.width = snap(newValue) }
    }

    public var al_height: CGFloat {
        get { return frame.size.height }
        set {  frame.size.height = snap(newValue) }
    }

    // MARK: - Edges
    public var al_top: CGFloat {
        get { return frame.al_top }
        set { frame.al_top = newValue }
    }

    public var al_right: CGFloat {
        get { return frame.al_right }
        set { frame.al_right = newValue }
    }

    public var al_bottom: CGFloat {
        get { return frame.al_bottom }
        set { frame.al_bottom = newValue }
    }

    public var al_left: CGFloat {
        get { return frame.al_left }
        set { frame.al_left = newValue }
    }

    // MARK: - Alternative Edges
    public var top2: CGFloat {
        get { return frame.top2 }
        set { frame.top2 = newValue }
    }

    public var right2: CGFloat {
        get { return frame.right2 }
        set { frame.right2 = newValue }
    }

    public var bottom2: CGFloat {
        get { return frame.bottom2 }
        set { frame.bottom2 = newValue }
    }

    public var left2: CGFloat {
        get { return frame.left2 }
        set { frame.left2 = newValue }
    }
    
}
