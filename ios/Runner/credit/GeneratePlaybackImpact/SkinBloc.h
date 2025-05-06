#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SkinBloc : NSObject

@property (nonatomic) NSMutableArray * retainedChart;

+ (instancetype) skinBlocWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) sliderType;

- (NSMutableDictionary *) presentDrawer;

- (int) coordinatorRight;

- (NSMutableSet *) dedicatedScreen;

- (NSMutableArray *) haseffect;

@end

NS_ASSUME_NONNULL_END
        