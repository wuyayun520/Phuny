#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface StreamResilienceManager : NSObject

@property (nonatomic) NSMutableDictionary * spotsize;

@property (nonatomic) int publisherBound;

+ (instancetype) streamResilienceManagerWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) referenceBorder;

- (NSMutableDictionary *) loadMedia;

- (int) shouldUpdateScreen;

- (NSMutableSet *) persistPlate;

- (NSMutableArray *) shouldCancelDrawer;

@end

NS_ASSUME_NONNULL_END
        