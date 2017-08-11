#import <React/RCTBridgeModule.h>
#import "RNReactArkit-Swift.h"
#import "RCTNodeViewManager.h"

@interface ARTextNodeViewManager : RCTNodeViewManager

@end

@implementation ARTextNodeViewManager


RCT_EXPORT_MODULE()

- (ARTextNodeView *)view
{
    return [[ARTextNodeView alloc] init];
}

RCT_EXPORT_VIEW_PROPERTY(size, NSDictionary)
RCT_EXPORT_VIEW_PROPERTY(geoposition, NSDictionary)
RCT_EXPORT_VIEW_PROPERTY(color, UIColor)
RCT_EXPORT_VIEW_PROPERTY(text, NSString)
RCT_EXPORT_VIEW_PROPERTY(font, NSString)

@end

