#import <React/RCTBridgeModule.h>
#import "RNReactArkit-Swift.h"
#import "RCTNodeViewManager.h"

@interface ARSphereNodeViewManager : RCTNodeViewManager

@end

@implementation ARSphereNodeViewManager


RCT_EXPORT_MODULE()

- (ARSphereNodeView *)view
{
    return [[ARSphereNodeView alloc] init];
}

RCT_EXPORT_VIEW_PROPERTY(size, NSDictionary)
RCT_EXPORT_VIEW_PROPERTY(geoposition, NSDictionary)
RCT_EXPORT_VIEW_PROPERTY(color, UIColor)

@end
