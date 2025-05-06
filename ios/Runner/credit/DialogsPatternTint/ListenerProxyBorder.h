#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ListenerProxyBorder : NSObject

@property (nonatomic) NSMutableDictionary * independentShape;

@property (nonatomic) NSMutableDictionary * brushPressure;

+ (instancetype) listenerProxyBorderWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) detachevent;

- (NSMutableDictionary *) parseSink;

- (int) contractionMode;

- (NSMutableSet *) canRestartLabel;

- (NSMutableArray *) draggableBaseline;

@end

NS_ASSUME_NONNULL_END
        