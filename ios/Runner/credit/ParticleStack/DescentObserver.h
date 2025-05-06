#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DescentObserver : NSObject

@property (nonatomic) NSString * trajectoryScale;

+ (instancetype) descentObserverWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) canSaveMovement;

- (NSMutableDictionary *) localizationormediator;

- (int) characterSingleton;

- (NSMutableSet *) spritehandler;

- (NSMutableArray *) visibleSwitch;

@end

NS_ASSUME_NONNULL_END
        