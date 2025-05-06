#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DiscardedIndicatorBase : NSObject

@property (nonatomic) NSMutableArray * shouldPauseExponent;

@property (nonatomic) NSMutableDictionary * customSkin;

@property (nonatomic) NSMutableArray * previewPadding;

+ (instancetype) discardedIndicatorBaseWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) lazyProtocol;

- (NSMutableDictionary *) popAppBar;

- (int) profileScope;

- (NSMutableSet *) invokeLabel;

- (NSMutableArray *) menuFramework;

@end

NS_ASSUME_NONNULL_END
        