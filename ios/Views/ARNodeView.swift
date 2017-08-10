//
//  ARSceneView.swift
//  ARReactiveTwo
//
//  Created by Ilter Canberk on 8/6/17.
//  Copyright © 2017. All rights reserved.
//

import Foundation
import UIKit
import ARKit

func warnForProp(_ prop:String) {
    print("\(prop) must be provided to the node")
}

@objc public class ARNodeView:SCNNode {
    
    var modelNode:SCNNode?

    override public init() {
        super.init()
        initGeometry()
    }

    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initGeometry()
    }

    func initGeometry() {
        self.geometry = SCNBox.init()
    }

    func setModelAssetPath(_ source:NSString) {
        let urlParts = source.components(separatedBy: ":")
        let geoScene = SCNScene(named: urlParts[0])
        
        guard let newModelNode:SCNNode = geoScene?.rootNode.childNode(withName: urlParts[1], recursively: true) else {
            print("Asset url could not be resolved")
            return
        }

        if self.modelNode != nil {
            self.modelNode?.removeFromParentNode()
        }

        self.modelNode = newModelNode
        self.addChildNode(newModelNode)
        
        // Reset the position so that the child node is
        // positioned at the center of the parent node.
        // We don't want this to be affected by the positioning
        // within the scene.
        self.modelNode?.position = SCNVector3Make(0,0,0);
    }

    func setGeoposition(_ position: NSDictionary) {
        
        guard let xPos = position.value(forKey: "x") as! Float?
            else { return warnForProp("X position") }

        guard let yPos = position.value(forKey: "y") as! Float?
            else { return warnForProp("Y position") }

        guard let zPos = position.value(forKey: "z") as! Float?
            else { return warnForProp("Z position") }

        let boxPosition = SCNVector3Make(xPos, yPos, zPos);
        self.position = boxPosition
    }

    func removeFromSuperview() {
        self.removeFromParentNode()
    }

    func setColor(_ color:UIColor) {
        self.geometry?.firstMaterial?.diffuse.contents = color
    }
}
