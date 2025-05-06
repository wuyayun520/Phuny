#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DifficultThemeAdapter : NSObject

@property (nonatomic) int screenInteraction;

@property (nonatomic) NSString * staticNotification;

+ (instancetype) difficultThemeAdapterWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) shouldYieldAlpha;

- (NSMutableDictionary *) resolverSpeed;

- (int) sequentialusageoffset;

- (NSMutableSet *) finishShader;

- (NSMutableArray *) imageopacity;

@end

NS_ASSUME_NONNULL_END
        