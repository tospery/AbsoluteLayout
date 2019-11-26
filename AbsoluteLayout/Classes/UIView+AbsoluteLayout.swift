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

    public var al_origin: CGPoint {
      get { return layer.al_origin }
      set { layer.al_origin = newValue }
    }

    public var al_x: CGFloat {
      get { return layer.al_x }
      set { layer.al_x = newValue }
    }

    public var al_y: CGFloat {
      get { return layer.al_y }
      set { layer.al_y = newValue }
    }

    public var al_centerX: CGFloat {
      get { return layer.al_centerX }
      set { layer.al_centerX = newValue }
    }

    public var al_centerY: CGFloat {
      get { return layer.al_centerY }
      set { layer.al_centerY = newValue }
    }

    // MARK: - Size

    public var al_size: CGSize {
      get { return layer.al_size }
      set { layer.al_size = newValue }
    }

    public var al_width: CGFloat {
      get { return layer.al_width }
      set { layer.al_width = newValue }
    }

    public var al_height: CGFloat {
      get { return layer.al_height }
      set { layer.al_height = newValue }
    }

    // MARK: - Edges

    public var al_top: CGFloat {
      get { return layer.al_top }
      set { layer.al_top = newValue }
    }

    public var al_right: CGFloat {
      get { return layer.al_right }
      set { layer.al_right = newValue }
    }

    public var al_bottom: CGFloat {
      get { return layer.al_bottom }
      set { layer.al_bottom = newValue }
    }

    public var al_left: CGFloat {
      get { return layer.al_left }
      set { layer.al_left = newValue }
    }

    // MARK: - Alternative Edges

    public var top2: CGFloat {
      get { return layer.top2 }
      set { layer.top2 = newValue }
    }

    public var right2: CGFloat {
      get { return layer.right2 }
      set { layer.right2 = newValue }
    }

    public var bottom2: CGFloat {
      get { return layer.bottom2 }
      set { layer.bottom2 = newValue }
    }

    public var left2: CGFloat {
      get { return layer.left2 }
      set { layer.left2 = newValue }
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
