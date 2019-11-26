//
//  UtilsFunction.swift
//  AbsoluteLayout
//
//  Created by 杨建祥 on 2019/11/26.
//

import UIKit

internal func snap(_ value: CGFloat) -> CGFloat {
    let screenScale = UIScreen.main.scale
    return ceil(value * screenScale) / screenScale
}

//MARK: - Insetting
public func inset(_ view: UIView, amount: CGFloat) -> CGRect {
    return inset(view.frame, amount: amount)
}

public func inset(_ layer: CALayer, amount: CGFloat) -> CGRect {
    return inset(layer.frame, amount: amount)
}

public func inset(_ rect: CGRect, amount: CGFloat) -> CGRect {
    return rect.insetBy(dx: amount, dy: amount)
}

public func inset(_ view: UIView, dx: CGFloat, dy: CGFloat) -> CGRect {
    return inset(view.frame, dx: dx, dy: dy)
}

public func inset(_ layer: CALayer, dx: CGFloat, dy: CGFloat) -> CGRect {
    return inset(layer.frame, dx: dx, dy: dy)
}

public func inset(_ rect: CGRect, dx: CGFloat, dy: CGFloat) -> CGRect {
    return rect.insetBy(dx: dx, dy: dy)
}

public func inset(_ view: UIView, top: CGFloat, left: CGFloat, bottom: CGFloat, right: CGFloat) -> CGRect {
    return inset(view.frame, top: top, left: left, bottom: bottom, right: right)
}

public func inset(_ layer: CALayer, top: CGFloat, left: CGFloat, bottom: CGFloat, right: CGFloat) -> CGRect {
    return inset(layer.frame, top: top, left: left, bottom: bottom, right: right)
}

public func inset(_ rect: CGRect, top: CGFloat, left: CGFloat, bottom: CGFloat, right: CGFloat) -> CGRect {
    return CGRect(origin: offset(rect.origin, dx: left, dy: top), size: inset(rect.size, top: top, left: left, bottom: bottom, right: right))
}

public func inset(_ size: CGSize, amount: CGFloat) -> CGSize {
    return inset(size, dx: amount, dy: amount)
}

public func inset(_ size: CGSize, dx: CGFloat, dy: CGFloat) -> CGSize {
    return inset(size, top: dy, left: dx, bottom: dy, right: dx)
}

public func inset(_ size: CGSize, top: CGFloat, left: CGFloat, bottom: CGFloat, right: CGFloat) -> CGSize {
    return CGSize(width: size.width - left - right, height: size.height - top - bottom)
}

// MARK: - Offsetting
public func offset(_ view: UIView, amount: CGFloat) -> CGRect {
    return offset(view.frame, amount: amount)
}

public func offset(_ layer: CALayer, amount: CGFloat) -> CGRect {
    return offset(layer.frame, amount: amount)
}

public func offset(_ rect: CGRect, amount: CGFloat) -> CGRect {
    return rect.offsetBy(dx: amount, dy: amount)
}

public func offset(_ view: UIView, dx: CGFloat, dy: CGFloat) -> CGRect {
    return offset(view.frame, dx: dx, dy: dy)
}

public func offset(_ layer: CALayer, dx: CGFloat, dy: CGFloat) -> CGRect {
    return offset(layer.frame, dx: dx, dy: dy)
}

public func offset(_ rect: CGRect, dx: CGFloat, dy: CGFloat) -> CGRect {
    return rect.offsetBy(dx: dx, dy: dy)
}

public func offset(_ point: CGPoint, amount: CGFloat) -> CGPoint {
    return offset(point, dx: amount, dy: amount)
}

public func offset(_ point: CGPoint, dx: CGFloat, dy: CGFloat) -> CGPoint {
    return CGPoint(x: point.x + dx, y: point.y + dy)
}

// MARK: - rect
public func rect(_ original: CGRect, x: CGFloat) -> CGRect {
    var rect = original
    rect.origin.x = snap(x)
    return rect
}

public func rect(_ original: CGRect, y: CGFloat) -> CGRect {
    var rect = original
    rect.origin.y = snap(y)
    return rect
}

public func rect(_ original: CGRect, origin: CGPoint) -> CGRect {
    var rect = original
    rect.origin = CGPoint(x: snap(origin.x), y: snap(origin.y))
    return rect
}

public func rect(_ original: CGRect, width: CGFloat) -> CGRect {
    if width < 0 {
        return original
    }
    var rect = original
    rect.size.width = snap(width)
    return rect
}

public func rect(_ original: CGRect, height: CGFloat) -> CGRect {
    if height < 0 {
        return original
    }
    var rect = original
    rect.size.height = snap(height)
    return rect
}

public func rect(_ original: CGRect, size: CGSize) -> CGRect {
    var rect = original
    rect.size = CGSize(width: snap(size.width), height: snap(size.height))
    return rect
}
