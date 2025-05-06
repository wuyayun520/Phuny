#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SkipMovementAudio : NSObject

@property (nonatomic) int immediateVolume;

+ (instancetype) skipMovementAudioWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) shouldEndResource;

- (NSMutableDictionary *) associatedEquipment;

- (int) shouldInflateChannels;

- (NSMutableSet *) canCancelNavigator;

- (NSMutableArray *) trainView;

@end

NS_ASSUME_NONNULL_END
        