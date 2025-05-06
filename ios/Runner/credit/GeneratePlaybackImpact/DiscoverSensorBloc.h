#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DiscoverSensorBloc : NSObject


- (void) bindAppBarInAsync;

- (void) deserializeMapper: (int)architectureSize and: (NSString *)beginnerLayer;

@end

NS_ASSUME_NONNULL_END
        