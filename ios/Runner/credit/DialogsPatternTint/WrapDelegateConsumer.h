#import "NumericalAmortizationList.h"
#import "ScalabilityFactory.h"
#import "ChannelsInfrastructureDecorator.h"
#import "PermissiveGestureHandler.h"
#import "IsolateFlyweightFormat.h"
#import "BehaviorObserverPosition.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface WrapDelegateConsumer : NSObject


- (void) writeTask;

- (void) consumeStatefulFuture;

@end

NS_ASSUME_NONNULL_END
        