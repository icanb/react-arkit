//  ReactArkit
//
//  Created by Ilter Canberk on 8/9/17.
//  Copyright © 2017. All rights reserved.
//

#import <React/RCTBridgeModule.h>
#import "RNReactArkit-Swift.h"
#import "RCTNodeViewManager.h"

@interface ARBoxNodeViewManager : RCTNodeViewManager

@end

@implementation ARBoxNodeViewManager


RCT_EXPORT_MODULE()

- (ARBoxNodeView *)view
{
    return [[ARBoxNodeView alloc] init];
}

RCT_EXPORT_VIEW_PROPERTY(size, NSDictionary)
RCT_EXPORT_VIEW_PROPERTY(color, UIColor)
RCT_EXPORT_VIEW_PROPERTY(geoposition, NSDictionary)

@end
