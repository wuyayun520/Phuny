#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UpCapsuleLocalization : NSObject

@property (nonatomic) int rapidParticle;

@property (nonatomic) int textfieldColor;

+ (instancetype) upCapsuleLocalizationWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) smallGrayscale;

- (NSMutableDictionary *) shouldDeserializeComposition;

- (int) shouldPersistBase;

- (NSMutableSet *) shouldEndMedia;

- (NSMutableArray *) canEmitTangent;

@end

NS_ASSUME_NONNULL_END
        