#import "TimerState.h"
#import "PauseRetainedAperture.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CaptureResourceProtocol : NSObject


- (void) continueReceiver;

- (void) storeGraph;

@end

NS_ASSUME_NONNULL_END
        