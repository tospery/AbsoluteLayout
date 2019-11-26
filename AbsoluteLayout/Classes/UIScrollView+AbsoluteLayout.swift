//
//  UIScrollView+AbsoluteLayout.swift
//  AbsoluteLayout
//
//  Created by 杨建祥 on 2019/11/26.
//

import UIKit

extension UIScrollView {

    // MARK: - Content Size
    public var contentWidth: CGFloat {
        get { return contentSize.width }
        set { contentSize.width = snap(newValue) }
    }

    public var contentHeight: CGFloat {
        get { return contentSize.height }
        set { contentSize.height = snap(newValue) }
    }

    // MARK: - Content Edges (For Convenience)
    public var contentLeft: CGFloat {
        return 0
    }
    
    public var contentRight: CGFloat {
        get { return contentWidth }
        set { contentWidth = newValue }
    }
    
    public var contentTop: CGFloat {
        return 0
    }

    public var contentBottom: CGFloat {
        get { return contentHeight }
        set { contentHeight = newValue }
    }

    // MARK: - Viewport Edges
    public var viewportLeft: CGFloat {
        get { return contentOffset.x }
        set { contentOffset.x = snap(newValue) }
    }
    
    public var viewportRight: CGFloat {
        get { return contentOffset.x + al_width }
        set { contentOffset.x = snap(newValue - al_width) }
    }
    
    public var viewportTop: CGFloat {
        get { return contentOffset.y }
        set { contentOffset.y = snap(newValue) }
    }

    public var viewportBottom: CGFloat {
        get { return contentOffset.y + al_height }
        set { contentOffset.y = snap(newValue - al_height) }
    }
    
}
