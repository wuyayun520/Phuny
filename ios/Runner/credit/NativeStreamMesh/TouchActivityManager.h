#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TouchActivityManager : NSObject

@property (nonatomic) NSString * shouldBindSensor;

@property (nonatomic) NSMutableDictionary * ignoredPosition;

@property (nonatomic) NSMutableArray * interactiveFormat;

+ (instancetype) touchActivityManagerWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) pointinterval;

- (NSMutableDictionary *) requestmultiplication;

- (int) interactivesignature;

- (NSMutableSet *) textureDepth;

- (NSMutableArray *) dataVisibility;

@end

NS_ASSUME_NONNULL_END
        