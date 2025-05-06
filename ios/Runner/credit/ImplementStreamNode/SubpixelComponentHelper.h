#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SubpixelComponentHelper : NSObject

@property (nonatomic) int optimizeaspect;

@property (nonatomic) int shouldSerializeBaseline;

@property (nonatomic) int resourcevaluemargin;

+ (instancetype) subpixelComponentHelperWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) crudeCluster;

- (NSMutableDictionary *) trainPadding;

- (int) serializeCustomPaint;

- (NSMutableSet *) checkRouter;

- (NSMutableArray *) processreducer;

@end

NS_ASSUME_NONNULL_END
        