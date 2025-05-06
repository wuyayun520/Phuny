#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface PartitionUniqueSink : NSObject


- (void) keepMutableAlertSingleton: (NSMutableSet *)lastOverlay;

@end

NS_ASSUME_NONNULL_END
        