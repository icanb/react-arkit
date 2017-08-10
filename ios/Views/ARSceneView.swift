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

@objc public class ARSceneView:ARSCNView {
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        self.initializeSessionAndProps()
    }
    
    public override init(frame: CGRect, options: [String : Any]? = nil) {
        super.init(frame: frame, options: options)
        self.initializeSessionAndProps()
    }

    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func initializeSessionAndProps() {
        let configuration = ARWorldTrackingSessionConfiguration()
        configuration.planeDetection = .horizontal
        self.session.run(configuration)
        self.debugOptions = [ARSCNDebugOptions.showWorldOrigin, ARSCNDebugOptions.showFeaturePoints]
    }

    override public func layoutSubviews() {
        super.layoutSubviews()
        self.backgroundColor = UIColor.blue
        print(">")
        print(self.subviews)
    }
    
    func setDebugEnabled(_ isEnabled:Bool) {
        print(isEnabled)
    }
    
    override public func addSubview(_ view:UIView) {
        let obj:Any = view as Any
        if let node:SCNNode = obj as? SCNNode {
            self.scene.rootNode.addChildNode(node)
        }
        else {
            super.addSubview(view)
        }
    }
}
