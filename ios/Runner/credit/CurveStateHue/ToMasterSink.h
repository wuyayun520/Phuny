#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ToMasterSink : NSObject


- (void) retainPublisher;

- (void) synchronizeWithinInteractorOperation;

- (void) attachUnderEventChain: (NSMutableSet *)robustData;

@end

NS_ASSUME_NONNULL_END
        