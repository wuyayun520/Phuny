#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SynchronizeConsumerBandwidth : NSObject

@property (nonatomic) NSString * disabledStateful;

+ (instancetype) synchronizeConsumerBandwidthWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) confidentialityShade;

- (NSMutableDictionary *) mutableReplica;

- (int) optionState;

- (NSMutableSet *) normalAudio;

- (NSMutableArray *) immutableIntegrity;

@end

NS_ASSUME_NONNULL_END
        