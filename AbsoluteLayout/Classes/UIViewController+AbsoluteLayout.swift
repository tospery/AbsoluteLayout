//
//  UIViewController+AbsoluteLayout.swift
//  AbsoluteLayout
//
//  Created by 杨建祥 on 2019/11/26.
//

import UIKit

extension UIViewController {

    public var viewBounds: CGRect {
        return view.bounds
    }

    // MARK: - Center
    public var viewCenterX: CGFloat {
        return view.al_centerX
    }

    public var viewCenterY: CGFloat {
        return view.al_centerY
    }
    
    public var viewCenter: CGPoint {
        return view.center
    }

    // MARK: - Size
    public var viewWidth: CGFloat {
        return view.al_width
    }

    public var viewHeight: CGFloat {
        return view.al_height
    }
    
    public var viewSize: CGSize {
        return view.al_size
    }

    // MARK: - Edges
    public var viewLeft: CGFloat {
        return 0
    }
    
    public var viewRight: CGFloat {
        return view.al_width
    }
    
    public var viewTop: CGFloat {
        return topLayoutGuide.length
    }

    public var viewBottom: CGFloat {
        return view.al_height - bottomLayoutGuide.length
    }
    
}
