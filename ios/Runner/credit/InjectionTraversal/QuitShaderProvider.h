#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface QuitShaderProvider : NSObject

@property (nonatomic) NSMutableDictionary * mediumTexture;

+ (instancetype) quitShaderProviderWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) autoDecoration;

- (NSMutableDictionary *) disabledConstant;

- (int) keySize;

- (NSMutableSet *) comparePreview;

- (NSMutableArray *) giftCenter;

@end

NS_ASSUME_NONNULL_END
        