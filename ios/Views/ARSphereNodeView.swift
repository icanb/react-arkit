//
//  ARBoxNodeView.swift
//  RNReactArkit
//
//  Created by Ilter Canberk on 8/9/17.
//  Copyright © 2017. All rights reserved.
//

import Foundation
import ARKit

@objc public class ARSphereNodeView: ARNodeView {

    override func initGeometry() {
        self.geometry = SCNSphere.init()
    }

    override func setSize(_ size: NSDictionary) {

        guard let radiusVal = size.value(forKey: "radius") as! CGFloat?
        else { return warnForProp("radius within size"); }

        var sphereGeometry: SCNSphere = SCNSphere.init()

        if self.geometry != nil {
            sphereGeometry = self.geometry as! SCNSphere
        }

        sphereGeometry.radius = radiusVal
        self.geometry = sphereGeometry
    }

}
