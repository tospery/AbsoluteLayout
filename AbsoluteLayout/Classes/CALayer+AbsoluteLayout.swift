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
    
}
