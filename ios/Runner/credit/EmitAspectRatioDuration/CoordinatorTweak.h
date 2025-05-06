#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CoordinatorTweak : NSObject

@property (nonatomic) NSMutableSet * challengebufferbehavior;

+ (instancetype) coordinatorTweakWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) canSetStatePositioned;

- (NSMutableDictionary *) shouldReplaceSpecifier;

- (int) routerShape;

- (NSMutableSet *) canCreateVariant;

- (NSMutableArray *) canReplacePageView;

@end

NS_ASSUME_NONNULL_END
        