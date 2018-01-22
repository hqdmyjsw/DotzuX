
#import "UIWindow+DebugMan.h"

@implementation UIWindow (DebugMan)

- (void)motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    if (event.type == UIEventTypeMotion && event.subtype == UIEventSubtypeMotionShake) {
        [[NSNotificationCenter defaultCenter] postNotification:[NSNotification notificationWithName:@"ShakeNotification_DebugMan" object:nil]];
    }
}

@end
