#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SemanticLazyUtil : NSObject

@property (nonatomic) NSMutableDictionary * basicPolyfill;

+ (instancetype) semanticLazyUtilWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) usedTouch;

- (NSMutableDictionary *) resilientTitle;

- (int) statefulDelivery;

- (NSMutableSet *) splitterFlags;

- (NSMutableArray *) shouldPublishHistogram;

@end

NS_ASSUME_NONNULL_END
        