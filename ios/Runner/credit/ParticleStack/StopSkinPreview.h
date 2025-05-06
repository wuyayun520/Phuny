#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface StopSkinPreview : NSObject

@property (nonatomic) NSMutableArray * shouldTransformVariant;

+ (instancetype) stopskinPreviewWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) completionMargin;

- (NSMutableDictionary *) granularScreen;

- (int) visibleChannel;

- (NSMutableSet *) protectedFrame;

- (NSMutableArray *) singleCache;

@end

NS_ASSUME_NONNULL_END
        