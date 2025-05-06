#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface PresentStreamBinder : NSObject

@property (nonatomic) int deserializeaspect;

@property (nonatomic) NSMutableDictionary * resilientDescriptor;

+ (instancetype) presentStreamBinderWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) copyManager;

- (NSMutableDictionary *) syncConfiguration;

- (int) canMountRadio;

- (NSMutableSet *) canDetachCoordinator;

- (NSMutableArray *) canYieldCache;

@end

NS_ASSUME_NONNULL_END
        