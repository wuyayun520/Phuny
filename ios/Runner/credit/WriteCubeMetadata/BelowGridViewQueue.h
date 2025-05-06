#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface BelowGridViewQueue : NSObject

@property (nonatomic) NSString * liteDelegate;

+ (instancetype) belowGridViewQueueWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) shouldKeepController;

- (NSMutableDictionary *) shouldFetchContainer;

- (int) updateController;

- (NSMutableSet *) shouldKeepProjection;

- (NSMutableArray *) accordionPreview;

@end

NS_ASSUME_NONNULL_END
        