#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface PinchableSliderView : NSObject

@property (nonatomic) NSMutableSet * elasticmodule;

@property (nonatomic) NSMutableSet * originalanimationbehavior;

+ (instancetype) pinchableSliderViewWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) shouldLayoutUsage;

- (NSMutableDictionary *) nativeFrame;

- (int) defaultbloc;

- (NSMutableSet *) ignoredSkirt;

- (NSMutableArray *) customizedTangent;

@end

NS_ASSUME_NONNULL_END
        