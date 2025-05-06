#import "RevisitPrismaticTween.h"
#import "StatefulEventStack.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ClearDelegateOwner : NSObject


- (void) detachUniqueFrame;

- (void) transitionAdjustBeforeSegue;

@end

NS_ASSUME_NONNULL_END
        