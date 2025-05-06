#import "IntoIsolateScalability.h"
#import "RebuildMatrixTexture.h"
#import "SpotDependency.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ConvertBatchGraph : NSObject


- (void) rebuildNextStream;

- (void) stopCycleResource;

@end

NS_ASSUME_NONNULL_END
        