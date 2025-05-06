#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface BatchTarget : NSObject

@property (nonatomic) int switchTransparency;

@property (nonatomic) NSMutableArray * agilePlayback;

+ (instancetype) batchTargetWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) canDismissIndicator;

- (NSMutableDictionary *) canPaintReference;

- (int) containerframe;

- (NSMutableSet *) listenResource;

- (NSMutableArray *) retrieveConfiguration;

@end

NS_ASSUME_NONNULL_END
        