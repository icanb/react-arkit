//
//  ARSceneView.swift
//  RNReactArkit
//
//  Created by Ilter Canberk on 8/9/17.
//  Copyright © 2017. All rights reserved.
//

import Foundation
import UIKit
import ARKit

@objc public class ARSceneView: ARSCNView {

    var config: ARWorldTrackingSessionConfiguration = ARWorldTrackingSessionConfiguration()

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
        self.config.planeDetection = .horizontal
        self.session.run(self.config)
        self.autoenablesDefaultLighting = true
    }

    override public func layoutSubviews() {
        super.layoutSubviews()
        self.backgroundColor = UIColor.blue
    }

    func setDebugEnabled(_ isEnabled: Bool) {
        if (isEnabled) {
            self.debugOptions = [ARSCNDebugOptions.showWorldOrigin, ARSCNDebugOptions.showFeaturePoints]
        } else {
            self.debugOptions = []
        }
    }

    func setRun(_ shouldRun: Bool) {
        if shouldRun == false {
            self.session.pause()
        } else {
            self.session.run(self.config)
        }
    }

    // We are overwriting addSubview that React-Native calls
    // by default to translate these actions into
    // SceneKit actions. addSubview becomes addChildNode
    override public func addSubview(_ view: UIView) {
        let obj:Any = view as Any
        if let node: SCNNode = obj as? SCNNode {
            self.scene.rootNode.addChildNode(node)
        } else {
            super.addSubview(view)
        }
    }
}
