#import "UseCaseSlider.h"
#import "PointController.h"
#import "CompareBoxDrawer.h"
#import "BuilderFragmentsCreator.h"
#import "FormatMonsterFactory.h"
#import "DisposeSampleContainer.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface AllocatorEventManager : NSObject


- (void) attachContractionThroughEmitter;

- (void) holdUsageAlongConsumer;

@end

NS_ASSUME_NONNULL_END
        