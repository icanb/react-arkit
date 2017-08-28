//
//  ARBoxNodeView.swift
//  RNReactArkit
//
//  Created by Ilter Canberk on 8/9/17.
//  Copyright © 2017. All rights reserved.
//

import Foundation
import ARKit

@objc public class ARTextNodeView: ARNodeView {
    
    var textNode: SCNNode?
    
    override func initGeometry() {
        self.geometry = SCNText.init()
    }
    
    override func setSize(_ size: NSDictionary) {
        
        if let existingNode = self.textNode {
            existingNode.removeFromParentNode()
        }
        
        var textGeometry: SCNText = SCNText.init()
        
        if self.geometry != nil {
            textGeometry = self.geometry as! SCNText
        }
        
        if size["fontSize"] != nil {
            let newFont = UIFont.init(name: textGeometry.font.fontName, size: size["fontSize"] as! CGFloat)
            textGeometry.font = newFont
        }
        
        if size["depth"] != nil {
            textGeometry.extrusionDepth = size["depth"] as! CGFloat
        }
        
        if size["chamfer"] != nil {
            textGeometry.chamferRadius = size["chamfer"] as! CGFloat
        }
        
        let scaledSize = size["fontSize"] as! CGFloat / 12;
        self.textNode = SCNNode.init(geometry: textGeometry)
        
        var scnMin = SCNVector3Zero
        var scnMax = SCNVector3Zero
        self.textNode?.__getBoundingBoxMin(&scnMin, max: &scnMax) // pass min and max as in-out parameters
        self.textNode?.position = SCNVector3Make(-(scnMin.x + scnMax.x) / 2, -(scnMin.y + scnMax.y) / 2, -(scnMin.z + scnMax.z) / 2);
        
        self.scale = SCNVector3Make(Float(scaledSize), Float(scaledSize), Float(scaledSize));
        self.addChildNode(self.textNode!)
    }
    
    func setFont(_ fontName: NSString) {
        let currentGeometry: SCNText = self.geometry as! SCNText
        let newFont = UIFont.init(name: fontName as String, size: currentGeometry.font.pointSize)
        currentGeometry.font = newFont
        self.geometry = currentGeometry
    }
    
    func setText(_ text: NSString) {
        let currentGeometry: SCNText = self.geometry as! SCNText
        currentGeometry.string = text
        self.geometry = currentGeometry
    }
    
}
