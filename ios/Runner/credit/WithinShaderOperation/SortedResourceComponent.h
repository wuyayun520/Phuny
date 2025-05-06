#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SortedResourceComponent : NSObject

@property (nonatomic) NSMutableSet * statefulTransformer;

+ (instancetype) sortedResourceComponentWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) quantizerModel;

- (NSMutableDictionary *) typicalGridView;

- (int) evaluateVector;

- (NSMutableSet *) concurrentFilter;

- (NSMutableArray *) shouldPublishStateless;

@end

NS_ASSUME_NONNULL_END
        