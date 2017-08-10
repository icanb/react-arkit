//  ReactArkit
//
//  Created by Ilter Canberk on 8/6/17.
//  Copyright © 2017. All rights reserved.
//

#import <React/RCTBridgeModule.h>
#import <React/RCTViewManager.h>
#import "RNReactArkit-Swift.h"

@interface ARNodeViewManager : RCTViewManager

@end

@implementation ARNodeViewManager


RCT_EXPORT_MODULE()

- (ARNodeView *)view
{
    return [[ARNodeView alloc] init];
}

RCT_EXPORT_VIEW_PROPERTY(modelAssetPath, NSString)
RCT_EXPORT_VIEW_PROPERTY(size, NSDictionary)
RCT_EXPORT_VIEW_PROPERTY(geoposition, NSDictionary)

@end
