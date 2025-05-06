#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface OnResourceThreshold : NSObject

@property (nonatomic) int shouldObserveStep;

@property (nonatomic) NSMutableArray * resilientSize;

+ (instancetype) onResourceThresholdWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) renderSizedBox;

- (NSMutableDictionary *) storeProxy;

- (int) shouldDecodePlate;

- (NSMutableSet *) temporaryCube;

- (NSMutableArray *) axisBottom;

@end

NS_ASSUME_NONNULL_END
        