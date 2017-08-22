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

@objc public class ARSceneView: ARSCNView, ARSCNViewDelegate, ARSessionDelegate {

    var config: ARWorldTrackingSessionConfiguration = ARWorldTrackingSessionConfiguration()
    var onPlaneDetectedFn: RCTBubblingEventBlock?
    var onPlaneUpdatedFn: RCTBubblingEventBlock?

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
        self.config = ARWorldTrackingSessionConfiguration()
        self.config.planeDetection = [.horizontal]
        self.delegate = self
        self.session.run(self.config)
        self.session.delegate = self
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
        self.delegate = self

    }

    func setRun(_ shouldRun: Bool) {
        if shouldRun == false {
            self.session.pause()
        } else {
            self.session.run(self.config)
        }
    }

    func setOnPlaneDetected(_ a:@escaping RCTBubblingEventBlock) {
        self.onPlaneDetectedFn = a
    }

    func setOnPlaneUpdated(_ a:@escaping RCTBubblingEventBlock) {
        self.onPlaneUpdatedFn = a
    }

    public func renderer(_ renderer: SCNSceneRenderer, didAdd node: SCNNode, for anchor: ARAnchor) {
        if let planeAnchor: ARPlaneAnchor = anchor as? ARPlaneAnchor {
            if self.onPlaneDetectedFn != nil {
                self.onPlaneDetectedFn!([
                    "id": planeAnchor.identifier.uuidString,
                    "alignment": planeAnchor.alignment,
                    "node": [
                        "x": node.position.x,
                        "y": node.position.y,
                        "z": node.position.z
                    ],
                    "center": [
                        "x": planeAnchor.center.x,
                        "y": planeAnchor.center.y,
                        "z": planeAnchor.center.z
                    ],
                    "extent": [
                        "x": planeAnchor.extent.x,
                        "y": planeAnchor.extent.y,
                        "z": planeAnchor.extent.z
                    ]
                ])
            }
        }
    }

    public func renderer(_ renderer: SCNSceneRenderer, didUpdate node: SCNNode, for anchor: ARAnchor) {

        if let planeAnchor: ARPlaneAnchor = anchor as? ARPlaneAnchor {
            if self.onPlaneUpdatedFn != nil {
                self.onPlaneUpdatedFn!([
                    "id": anchor.identifier.uuidString,
                    "alignment": planeAnchor.alignment,
                    "node": [
                        "x": node.position.x,
                        "y": node.position.y,
                        "z": node.position.z
                    ],
                    "center": [
                        "x": planeAnchor.center.x,
                        "y": planeAnchor.center.y,
                        "z": planeAnchor.center.z
                    ],
                    "extent": [
                        "x": planeAnchor.extent.x,
                        "y": planeAnchor.extent.y,
                        "z": planeAnchor.extent.z
                    ]
                ])
            }
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

        self.config = ARWorldTrackingSessionConfiguration()
        self.config.planeDetection = [.horizontal]
        self.delegate = self
        self.session.run(self.config)
        self.session.delegate = self

    }
}
