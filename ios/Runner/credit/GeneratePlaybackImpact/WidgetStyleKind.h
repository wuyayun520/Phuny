#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface WidgetStyleKind : NSObject

@property (nonatomic) int draggablePromise;

@property (nonatomic) int accordionJoiner;

@property (nonatomic) int lazyReliability;

+ (instancetype) widgetStyleKindWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) shouldRenderTable;

- (NSMutableDictionary *) mountView;

- (int) fragmentFlags;

- (NSMutableSet *) timeraspect;

- (NSMutableArray *) mechanismIndex;

@end

NS_ASSUME_NONNULL_END
        