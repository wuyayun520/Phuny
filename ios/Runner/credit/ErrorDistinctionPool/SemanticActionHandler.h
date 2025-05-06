#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SemanticActionHandler : NSObject

@property (nonatomic) NSMutableSet * subscriptionVisibility;

@property (nonatomic) NSMutableDictionary * stampformat;

+ (instancetype) semanticActionHandlerWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) activeSwitch;

- (NSMutableDictionary *) shouldDeserializeSpine;

- (int) unmountedMusic;

- (NSMutableSet *) shouldHandleMobile;

- (NSMutableArray *) grayscaleSingleton;

@end

NS_ASSUME_NONNULL_END
        