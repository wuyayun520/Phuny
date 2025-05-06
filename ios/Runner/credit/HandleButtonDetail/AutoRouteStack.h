#import "ImmediateBitrateMetrics.h"
#import "SharedWorkflowTimeline.h"
#import "ToolDelegate.h"
#import "SequentialOptimizerStream.h"
#import "DeferredChannelsOffset.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface AutoRouteStack : NSObject


- (void) persistAsynchronousDescription;

- (void) instantiateCrudeGroup;

@end

NS_ASSUME_NONNULL_END
        