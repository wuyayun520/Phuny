#import "ObserverScope.h"
#import "MediocreDiscardedCoordinator.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TaskCallback : NSObject


- (void) startOffHeapInterpreter;

- (void) unregisterStateless;

@end

NS_ASSUME_NONNULL_END
        