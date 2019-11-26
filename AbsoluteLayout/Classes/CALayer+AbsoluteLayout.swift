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
    public var x: CGFloat {
        get { return al_x }
        set { al_x = newValue }
    }

    public var al_y: CGFloat {
        get { return frame.al_y }
        set { frame.al_y = newValue }
    }
    public var y: CGFloat {
        get { return al_y }
        set { al_y = newValue }
    }
    
    public var al_origin: CGPoint {
        get { return frame.origin }
        set { al_x = newValue.x; al_y = newValue.y }
    }
    public var origin: CGPoint {
        get { return al_origin }
        set { al_origin = newValue }
    }
    
    public var al_centerX: CGFloat {
        get { return frame.al_centerX }
        set { frame.al_centerX = newValue }
    }
    public var centerX: CGFloat {
        get { return al_centerX }
        set { al_centerX = newValue }
    }
    
    public var al_centerY: CGFloat {
        get { return frame.al_centerY }
        set { frame.al_centerY = newValue }
    }
    public var centerY: CGFloat {
        get { return al_centerY }
        set { al_centerY = newValue }
    }
    
    public var al_center: CGPoint {
        get { return frame.al_center }
        set { frame.al_center = newValue }
    }
    public var center: CGPoint {
        get { return al_center }
        set { al_center = newValue }
    }

    // MARK: - Size
    public var al_width: CGFloat {
        get { return frame.size.width }
        set { frame.size.width = snap(newValue) }
    }
    public var width: CGFloat {
        get { return al_width }
        set { al_width = newValue }
    }

    public var al_height: CGFloat {
        get { return frame.size.height }
        set { frame.size.height = snap(newValue) }
    }
    public var height: CGFloat {
        get { return al_height }
        set { al_height = newValue }
    }
    
    public var al_size: CGSize {
        get { return frame.size }
        set { al_width = newValue.width; al_height = newValue.height }
    }
    public var size: CGSize {
        get { return al_size }
        set { al_size = newValue }
    }

    // MARK: - Edges
    public var al_left: CGFloat {
        get { return frame.left }
        set { frame.left = newValue }
    }
    public var left: CGFloat {
        get { return al_left }
        set { al_left = newValue }
    }
    
    public var al_right: CGFloat {
        get { return frame.right }
        set { frame.right = newValue }
    }
    public var right: CGFloat {
        get { return al_right }
        set { al_right = newValue }
    }
    
    public var al_top: CGFloat {
        get { return frame.al_top }
        set { frame.al_top = newValue }
    }
    public var top: CGFloat {
        get { return al_top }
        set { al_top = newValue }
    }

    public var al_bottom: CGFloat {
        get { return frame.bottom }
        set { frame.bottom = newValue }
    }
    public var bottom: CGFloat {
        get { return al_bottom }
        set { al_bottom = newValue }
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
