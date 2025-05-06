#import "AttachInkWellDelegate.h"
#import "ScheduleStepCreator.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface BlocListenerInstance : NSObject


- (void) clearOldCallback;

- (void) hideEagerZoneOperation;

@end

NS_ASSUME_NONNULL_END
        