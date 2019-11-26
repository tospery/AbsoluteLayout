//
//  CALayer+AbsoluteLayout.swift
//  AbsoluteLayout
//
//  Created by 杨建祥 on 2019/11/26.
//

import UIKit

extension CALayer {

    // MARK: - Position
    public var al_x: CGFloat {
        get { return frame.al_x }
        set { frame.al_x = newValue }
    }

    public var al_y: CGFloat {
        get { return frame.al_y }
        set { frame.al_y = newValue }
    }
    
    public var al_origin: CGPoint {
        get { return frame.origin }
        set { frame.origin = newValue }
    }

    public var al_centerX: CGFloat {
        get { return frame.al_centerX }
        set { frame.al_centerX = newValue }
    }

    public var al_centerY: CGFloat {
        get { return frame.al_centerY }
        set { frame.al_centerY = newValue }
    }
    
    public var al_center: CGPoint {
        get { return frame.al_center }
        set { frame.al_center = newValue }
    }

    // MARK: - Size
    public var al_width: CGFloat {
        get { return frame.al_width }
        set { frame.al_width = snap(newValue) }
    }

    public var al_height: CGFloat {
        get { return frame.al_height }
        set { frame.al_height = snap(newValue) }
    }
    
    public var al_size: CGSize {
        get { return frame.size }
        set { frame.size = newValue }
    }

    // MARK: - Edges
    public var al_left: CGFloat {
        get { return frame.al_left }
        set { frame.al_left = newValue }
    }
    
    public var al_right: CGFloat {
        get { return frame.al_right }
        set { frame.al_right = newValue }
    }
    
    public var al_top: CGFloat {
        get { return frame.al_top }
        set { frame.al_top = newValue }
    }

    public var al_bottom: CGFloat {
        get { return frame.al_bottom }
        set { frame.al_bottom = newValue }
    }

    // MARK: - Alternative Edges
    public var alternativeLeft: CGFloat {
        get { return frame.alternativeLeft }
        set { frame.alternativeLeft = newValue }
    }
    
    public var alternativeRight: CGFloat {
        get { return frame.alternativeRight }
        set { frame.alternativeRight = newValue }
    }
    
    public var alternativeTop: CGFloat {
        get { return frame.alternativeTop }
        set { frame.alternativeTop = newValue }
    }

    public var alternativeBottom: CGFloat {
        get { return frame.alternativeBottom }
        set { frame.alternativeBottom = newValue }
    }
    
}
