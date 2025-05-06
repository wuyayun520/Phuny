#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SortedHeapAmortization : NSObject

@property (nonatomic) NSString * mediumComponent;

+ (instancetype) sortedHeapAmortizationWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) canLoadRemainder;

- (NSMutableDictionary *) tappableRow;

- (int) pickerBound;

- (NSMutableSet *) curvepicker;

- (NSMutableArray *) backwardChart;

@end

NS_ASSUME_NONNULL_END
        