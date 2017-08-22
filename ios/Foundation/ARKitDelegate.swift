//
//  ARKitDelegate.swift
//  RNReactArkit
//
//  Created by Ilter Canberk on 8/7/17.
//  Copyright © 2017. All rights reserved.
//

import Foundation
import ARKit

class ARKitDelegate: NSObject, ARSCNViewDelegate, ARSessionDelegate {

    func renderer(_ renderer: SCNSceneRenderer, didAdd node: SCNNode, for anchor: ARAnchor) {
        print("YO")
    }
}
