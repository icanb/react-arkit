//
//  SCNNode+Reactive.swift
//  ARReactiveTwo
//
//  Created by Ilter Canberk on 8/7/17.
//  Copyright © 2017. All rights reserved.
//

import Foundation
import ARKit
import ObjectiveC

extension SCNNode {
    //- (void)setReactTag:(NSNumber *)reactTag
    
//    - (NSNumber *)reactTag
//    {
//    return objc_getAssociatedObject(self, _cmd);
//    }
//
//    - (void)setReactTag:(NSNumber *)reactTag
//    {
//    objc_setAssociatedObject(self, @selector(reactTag), reactTag, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
//    }
//
    
    func isReactRootView() -> Bool {
        return reactTag().intValue % 10 == 1;
    }
    
    private struct AssociatedKeys {
        static var keyForReactTag = "nsh_DescriptiveName"
    }

    func setReactTag(_ reactTag:NSNumber) {
        objc_setAssociatedObject(self, &AssociatedKeys.keyForReactTag, reactTag, .OBJC_ASSOCIATION_RETAIN);
    }
    
    func reactTag() -> NSNumber {
        let reactTag = objc_getAssociatedObject(self, &AssociatedKeys.keyForReactTag);
        return reactTag as! NSNumber;
    }
    
    func _reactSubviews() -> NSArray {
        return [];
    }

    func reactSubviews() -> NSArray {
        return [];
    }
    
    func setMultipleTouchEnabled(_ isTouchEnabled:Bool) {
        
    }
    
    func setUserInteractionEnabled(_ isUserIntercactionEnabled:Bool) {
        
    }
    
    func layer() -> CALayer? {
        return nil
    }
    
    func _DEBUG_setReactShadowView(_ shadowView:Any) { }

    func _DEBUG_reactShadowView() -> Any? {
        return nil
    }
    
    func reactLayoutDirection() -> UIUserInterfaceLayoutDirection {
        return UIUserInterfaceLayoutDirection.leftToRight;
    }
    
    func setReactLayoutDirection(_ layoutDirection: UIUserInterfaceLayoutDirection) {
        //
    }
    
    func reactSetFrame(_ frame:CGRect) { }
    
    func reactSetInheritedBackgroundColor(_ inheritedBackgroundColor:UIColor) { }

    
}
