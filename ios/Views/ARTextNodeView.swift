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

    override func initGeometry() {
        self.geometry = SCNText.init()
    }

    override func setSize(_ size: NSDictionary) {

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

        self.geometry = textGeometry
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
