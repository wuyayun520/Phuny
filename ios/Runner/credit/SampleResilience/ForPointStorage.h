#import "RenderInstructionHelper.h"
#import "CloneBasePresenter.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ForPointStorage : NSObject


- (void) listenAggregateToNotification;

- (void) skipSubscription;

@end

NS_ASSUME_NONNULL_END
        