#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface FromCursorWidget : NSObject

@property (nonatomic) int agileAlpha;

@property (nonatomic) NSMutableSet * meshSize;

+ (instancetype) fromCursorWidgetWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) delegateChannel;

- (NSMutableDictionary *) toolSpacing;

- (int) copybatch;

- (NSMutableSet *) canSkipModal;

- (NSMutableArray *) tickerRate;

@end

NS_ASSUME_NONNULL_END
        