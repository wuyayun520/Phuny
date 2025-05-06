#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface EntityCycleTail : NSObject

@property (nonatomic) NSMutableSet * gridviewedge;

@property (nonatomic) NSString * screenEdge;

+ (instancetype) entityCycleTailWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) enabledIcon;

- (NSMutableDictionary *) visualizeProgressBar;

- (int) shouldSkipBatch;

- (NSMutableSet *) loopmementobehavior;

- (NSMutableArray *) positionedComposite;

@end

NS_ASSUME_NONNULL_END
        