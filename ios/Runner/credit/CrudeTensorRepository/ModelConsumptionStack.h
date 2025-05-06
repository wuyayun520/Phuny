#import "MaterialMetricsFactory.h"
#import "LargeUniformAllocator.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ModelConsumptionStack : NSObject


- (void) routeBase;

- (void) withoutInstructionGrain;

@end

NS_ASSUME_NONNULL_END
        