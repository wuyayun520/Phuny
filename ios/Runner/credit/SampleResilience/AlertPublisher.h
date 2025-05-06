#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface AlertPublisher : NSObject


- (void) createInstructionInstance;

- (void) persistStore: (NSMutableSet *)fixedImpact;

- (void) dispatchHardCoordinator;

@end

NS_ASSUME_NONNULL_END
        