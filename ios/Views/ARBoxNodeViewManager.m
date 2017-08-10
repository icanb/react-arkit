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
