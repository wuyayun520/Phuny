#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface LocalTaskExtension : NSObject

@property (nonatomic) NSMutableArray * animatedSound;

+ (instancetype) localTaskExtensionWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) shouldConnectTransition;

- (NSMutableDictionary *) nibLeft;

- (int) metricsAcceleration;

- (NSMutableSet *) referenceBottom;

- (NSMutableArray *) directlyCache;

@end

NS_ASSUME_NONNULL_END
        