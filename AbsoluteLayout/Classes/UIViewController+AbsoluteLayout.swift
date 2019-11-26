//
//  UIViewController+AbsoluteLayout.swift
//  AbsoluteLayout
//
//  Created by 杨建祥 on 2019/11/26.
//

import UIKit

extension UIViewController {

    public var al_bounds: CGRect {
        return view.bounds
    }

    // MARK: - Center
    public var al_centerX: CGFloat {
        return view.al_centerX
    }

    public var al_centerY: CGFloat {
        return view.al_centerY
    }
    
    public var al_center: CGPoint {
        return view.center
    }

    // MARK: - Size
    public var al_width: CGFloat {
        return view.al_width
    }

    public var al_height: CGFloat {
        return view.al_height
    }
    
    public var al_size: CGSize {
        return view.al_size
    }

    // MARK: - Edges
    public var al_left: CGFloat {
        return 0
    }
    
    public var al_right: CGFloat {
        return view.al_width
    }
    
    public var al_top: CGFloat {
        return topLayoutGuide.length
    }

    public var al_bottom: CGFloat {
        return view.al_height - bottomLayoutGuide.length
    }
    
}
