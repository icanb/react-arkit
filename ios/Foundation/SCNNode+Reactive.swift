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
        return reactTag().intValue % 10 == 1;
    }
    
    private struct AssociatedKeys {
        static var keyForReactTag = "keyForReactTag"
    }

    func setReactTag(_ reactTag:NSNumber) {
        objc_setAssociatedObject(self, &AssociatedKeys.keyForReactTag, reactTag, .OBJC_ASSOCIATION_RETAIN);
    }
    
    func reactTag() -> NSNumber {
        let reactTag = objc_getAssociatedObject(self, &AssociatedKeys.keyForReactTag);
        return reactTag as! NSNumber;
    }
    
    func _reactSubviews() -> NSArray { return []; }
    func reactSubviews() -> NSArray { return []; }


    func setMultipleTouchEnabled(_ isTouchEnabled:Bool) { }
    func setUserInteractionEnabled(_ isUserIntercactionEnabled:Bool) { }
    func layer() -> CALayer? { return nil }
    func _DEBUG_reactShadowView() -> Any? { return nil }
    func reactLayoutDirection() -> UIUserInterfaceLayoutDirection { return UIUserInterfaceLayoutDirection.leftToRight; }
    func _DEBUG_setReactShadowView(_ shadowView:Any) { }
    func setReactLayoutDirection(_ layoutDirection: UIUserInterfaceLayoutDirection) {}
    func reactSetFrame(_ frame:CGRect) { }
    func reactSetInheritedBackgroundColor(_ inheritedBackgroundColor:UIColor) { }

}
