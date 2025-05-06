#import "DecodeProviderCompleter.h"
#import "SingletonColorDelegate.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ReactiveStoreProtocol : NSObject


- (void) getEphemeralAllocatorFacade;

- (void) accelerateCompleter;

@end

NS_ASSUME_NONNULL_END
        