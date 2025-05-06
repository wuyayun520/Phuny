#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SyncModalNode : NSObject

@property (nonatomic) NSMutableSet * activitySize;

@property (nonatomic) NSMutableSet * discardedTabView;

+ (instancetype) syncModalNodeWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) certificateTemple;

- (NSMutableDictionary *) parsePosition;

- (int) publisherSpeed;

- (NSMutableSet *) shouldMountMedia;

- (NSMutableArray *) canDisposeExpanded;

@end

NS_ASSUME_NONNULL_END
        