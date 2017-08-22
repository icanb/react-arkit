//  RNReactArkit
//
//  Created by Ilter Canberk on 8/9/17.
//  Copyright © 2017. All rights reserved.
//

#import <React/RCTBridgeModule.h>
#import <React/RCTViewManager.h>
#import <React/RCTComponent.h>

#import "RNReactArkit-Swift.h"

@interface ARSceneViewManager : RCTViewManager

@end

@implementation ARSceneViewManager


RCT_EXPORT_MODULE()

- (UIView *)view
{
    return [[ARSceneView alloc] init];
}

RCT_EXPORT_VIEW_PROPERTY(debugEnabled, BOOL)
RCT_EXPORT_VIEW_PROPERTY(run, BOOL)

RCT_EXPORT_VIEW_PROPERTY(onPlaneDetected, RCTBubblingEventBlock)
RCT_EXPORT_VIEW_PROPERTY(onPlaneUpdated, RCTBubblingEventBlock)

@end
