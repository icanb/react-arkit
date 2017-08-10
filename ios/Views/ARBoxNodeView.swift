//
//  ARBoxNodeView.swift
//  RNReactArkit
//
//  Created by Ilter Canberk on 8/9/17.
//  Copyright © 2017. All rights reserved.
//

import Foundation
import ARKit

@objc public class ARBoxNodeView: ARNodeView {

    func setSize(_ size: NSDictionary) {

        guard let h = size.value(forKey: "height") as! CGFloat?
        else { return warnForProp("height inside position") }

        guard let w = size.value(forKey: "width") as! CGFloat?
        else { return warnForProp("width inside position") }

        guard let l = size.value(forKey: "length") as! CGFloat?
        else { return warnForProp("length inside position") }

        guard let chamferRadius = size.value(forKey: "chamferRadius") as! CGFloat?
        else { return warnForProp("chamferRadius inside position") }

        var boxGeometry: SCNBox = SCNBox.init()

        if self.geometry != nil {
            boxGeometry = self.geometry as! SCNBox
        }

        boxGeometry.width = w
        boxGeometry.height = h
        boxGeometry.length = l
        boxGeometry.chamferRadius = chamferRadius

        self.geometry = boxGeometry
    }
}
