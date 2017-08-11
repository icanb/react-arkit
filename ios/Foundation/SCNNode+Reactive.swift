//
//  SCNNode+Reactive.swift
//  RNReactArkit
//
//  Created by Ilter Canberk on 8/9/17.
//  Copyright © 2017. All rights reserved.
//

import Foundation
import ARKit
import ObjectiveC

extension SCNNode {

    func isReactRootView() -> Bool {
        return self.reactTag.intValue % 10 == 1
    }

    private struct AssociatedKeys {
        static var keyForReactTag = "keyForReactTag"
    }

    var reactTag: NSNumber {
        get {
            return objc_getAssociatedObject(self, &AssociatedKeys.keyForReactTag) as! NSNumber
        }
        set {
            objc_setAssociatedObject(self, &AssociatedKeys.keyForReactTag, newValue, .OBJC_ASSOCIATION_RETAIN)
        }
    }

    // Need to mock React Native's UIView (see: UIView+Reach.h) extensions
    // here in order to let layout engine treat these  SCNNodes the same way
    func _reactSubviews() -> NSArray { return []; }
    func reactSubviews() -> NSArray { return []; }

    func setMultipleTouchEnabled(_ isTouchEnabled: Bool) { }
    func setUserInteractionEnabled(_ isUserIntercactionEnabled: Bool) { }
    func layer() -> CALayer? { return nil }
    func _DEBUG_reactShadowView() -> Any? { return nil }
    func reactLayoutDirection() -> UIUserInterfaceLayoutDirection { return UIUserInterfaceLayoutDirection.leftToRight; }
    func _DEBUG_setReactShadowView(_ shadowView:Any) { }
    func setReactLayoutDirection(_ layoutDirection: UIUserInterfaceLayoutDirection) {}
    func reactSetFrame(_ frame: CGRect) { }
    func reactSetInheritedBackgroundColor(_ inheritedBackgroundColor: UIColor) { }

}
