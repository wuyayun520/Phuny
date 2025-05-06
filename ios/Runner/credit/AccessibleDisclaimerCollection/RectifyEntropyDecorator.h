#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface RectifyEntropyDecorator : NSObject

@property (nonatomic) NSMutableSet * uniformDescriptor;

@property (nonatomic) NSMutableSet * hardScene;

+ (instancetype) rectifyEntropyDecoratorWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) activeMonster;

- (NSMutableDictionary *) displayableItem;

- (int) canRenderInterpolation;

- (NSMutableSet *) shouldDeserializeAlpha;

- (NSMutableArray *) pendingLog;

@end

NS_ASSUME_NONNULL_END
        