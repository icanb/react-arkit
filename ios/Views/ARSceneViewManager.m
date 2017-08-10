#import <React/RCTBridgeModule.h>
#import <React/RCTViewManager.h>
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

@end
