#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface EffectFactory : NSObject

@property (nonatomic) int gestureSkewY;

+ (instancetype) effectFactoryWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) interfaceVelocity;

- (NSMutableDictionary *) matrixVisitor;

- (int) positionSystem;

- (NSMutableSet *) permissiveRow;

- (NSMutableArray *) initializeService;

@end

NS_ASSUME_NONNULL_END
        