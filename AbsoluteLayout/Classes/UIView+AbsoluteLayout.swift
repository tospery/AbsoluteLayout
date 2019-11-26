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
        get { return frame.minX }
        set { frame = rect(frame, x: newValue) }
    }

    public var al_y: CGFloat {
        get { return frame.minY }
        set { frame = rect(frame, y: newValue) }
    }
    
    public var al_origin: CGPoint {
        get { return frame.origin }
        set { frame = rect(frame, origin: newValue) }
    }
    
    public var al_centerX: CGFloat {
        get { return center.x }
        set { center = CGPoint(x: snap(newValue), y: center.y) }
    }

    public var al_centerY: CGFloat {
        get { return center.y }
        set { center = CGPoint(x: center.x, y: snap(newValue)) }
    }
    
    // MARK: - Size
    public var al_width: CGFloat {
        get { return frame.width }
        set { frame = rect(frame, width: newValue) }
    }

    public var al_height: CGFloat {
        get { return frame.height }
        set { frame = rect(frame, height: newValue) }
    }
    
    public var al_size: CGSize {
        get { return frame.size }
        set { frame = rect(frame, size: newValue) }
    }

    // MARK: - Edges
    public var al_left: CGFloat {
        get { return frame.minX }
        set { frame = rect(frame, x: newValue) }
    }
    
    public var al_right: CGFloat {
        get { return frame.maxX }
        set { frame = rect(frame, x: newValue - frame.width) }
    }
    
    public var al_top: CGFloat {
        get { return frame.minY }
        set { frame = rect(frame, y: newValue) }
    }

    public var al_bottom: CGFloat {
        get { return frame.maxY }
        set { frame = rect(frame, y: newValue - frame.height) }
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
        al_size = newSize
        return newSize
    }
    
}
