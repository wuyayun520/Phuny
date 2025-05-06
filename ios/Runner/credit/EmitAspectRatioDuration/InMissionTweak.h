#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface InMissionTweak : NSObject

@property (nonatomic) int defaultPainter;

@property (nonatomic) NSString * usedVertex;

+ (instancetype) inMissionTweakWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) materializeText;

- (NSMutableDictionary *) shouldProcessController;

- (int) canCancelCosine;

- (NSMutableSet *) shouldRestartOverlay;

- (NSMutableArray *) sustainableButton;

@end

NS_ASSUME_NONNULL_END
        