//
//  UIViewController+AbsoluteLayout.swift
//  AbsoluteLayout
//
//  Created by 杨建祥 on 2019/11/26.
//

import UIKit

extension UIViewController {

    public var bounds: CGRect {
        return view.bounds
    }

    // MARK: - Center
    public var centerX: CGFloat {
        return view.al_centerX
    }

    public var centerY: CGFloat {
        return view.al_centerY
    }
    
    public var center: CGPoint {
        return view.center
    }

    // MARK: - Size
    public var width: CGFloat {
        return view.al_width
    }

    public var height: CGFloat {
        return view.al_height
    }
    
    public var size: CGSize {
        return view.al_size
    }

    // MARK: - Edges
    public var left: CGFloat {
        return 0
    }
    
    public var right: CGFloat {
        return view.al_width
    }
    
    public var top: CGFloat {
        return topLayoutGuide.length
    }

    public var bottom: CGFloat {
        return view.al_height - bottomLayoutGuide.length
    }
    
}
