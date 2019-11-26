//
//  UIView+AbsoluteLayout.swift
//  AbsoluteLayout
//
//  Created by 杨建祥 on 2019/11/26.
//

import UIKit

// I wish there was an easier way to do this in Swift.
extension UIView {

    // MARK: - Position
    public var al_x: CGFloat {
        get { return layer.al_x }
        set { layer.al_x = newValue }
    }
    public var x: CGFloat {
        get { return al_x }
        set { al_x = newValue }
    }

    public var al_y: CGFloat {
        get { return layer.al_y }
        set { layer.al_y = newValue }
    }
    public var y: CGFloat {
        get { return al_y }
        set { al_y = newValue }
    }
    
    public var al_origin: CGPoint {
        get { return layer.al_origin }
        set { layer.al_origin = newValue }
    }
    public var origin: CGPoint {
        get { return al_origin }
        set { al_origin = newValue }
    }

    public var al_centerX: CGFloat {
        get { return layer.al_centerX }
        set { layer.al_centerX = newValue }
    }
    public var centerX: CGFloat {
        get { return al_centerX }
        set { al_centerX = newValue }
    }

    public var al_centerY: CGFloat {
        get { return layer.al_centerY }
        set { layer.al_centerY = newValue }
    }
    public var centerY: CGFloat {
        get { return al_centerY }
        set { al_centerY = newValue }
    }
    
    public var al_center: CGPoint {
        get { return layer.al_center }
        set { layer.al_center = newValue }
    }
    public var center: CGPoint {
        get { return al_center }
        set { al_center = newValue }
    }

    // MARK: - Size
    public var al_width: CGFloat {
        get { return layer.al_width }
        set { layer.al_width = newValue }
    }
    public var width: CGFloat {
        get { return al_width }
        set { al_width = newValue }
    }

    public var al_height: CGFloat {
        get { return layer.al_height }
        set { layer.al_height = newValue }
    }
    public var height: CGFloat {
        get { return al_height }
        set { al_height = newValue }
    }
    
    public var al_size: CGSize {
        get { return layer.al_size }
        set { layer.al_size = newValue }
    }
    public var size: CGSize {
        get { return al_size }
        set { al_size = newValue }
    }

    // MARK: - Edges
    public var al_left: CGFloat {
        get { return layer.al_left }
        set { layer.al_left = newValue }
    }
    public var left: CGFloat {
        get { return al_left }
        set { al_left = newValue }
    }
    
    public var al_right: CGFloat {
        get { return layer.al_right }
        set { layer.al_right = newValue }
    }
    public var right: CGFloat {
        get { return al_right }
        set { al_right = newValue }
    }
    
    public var al_top: CGFloat {
        get { return layer.al_top }
        set { layer.al_top = newValue }
    }
    public var top: CGFloat {
        get { return al_top }
        set { al_top = newValue }
    }

    public var al_bottom: CGFloat {
        get { return layer.al_bottom }
        set { layer.al_bottom = newValue }
    }
    public var bottom: CGFloat {
        get { return al_bottom }
        set { al_bottom = newValue }
    }

    // MARK: - Alternative Edges
    public var alternativeLeft: CGFloat {
        get { return layer.alternativeLeft }
        set { layer.alternativeLeft = newValue }
    }
    
    public var alternativeRight: CGFloat {
        get { return layer.alternativeRight }
        set { layer.alternativeRight = newValue }
    }
    
    public var alternativeTop: CGFloat {
        get { return layer.alternativeTop }
        set { layer.alternativeTop = newValue }
    }

    public var alternativeBottom: CGFloat {
        get { return layer.alternativeBottom }
        set { layer.alternativeBottom = newValue }
    }

    // MARK: - Automatic Sizing
    @discardableResult
    public func sizeToFit(_ width: CGFloat, _ height: CGFloat) -> CGSize {
        return sizeToFit(CGSize(width: width, height: height))
    }

    @discardableResult
    public func sizeToFit(_ constrainedSize: CGSize) -> CGSize {
        var newSize = sizeThatFits(constrainedSize)
        newSize.width = min(newSize.width, constrainedSize.width)
        newSize.height = min(newSize.height, constrainedSize.height)
        size = newSize
        return newSize
    }
}
