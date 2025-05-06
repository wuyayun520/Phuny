#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MediocreAmortizationHelper : NSObject

@property (nonatomic) NSMutableSet * shouldLoadSegue;

@property (nonatomic) int shouldShowGift;

+ (instancetype) mediocreAmortizationHelperWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) canDisconnectAspect;

- (NSMutableDictionary *) reduceSubscription;

- (int) imagelabel;

- (NSMutableSet *) tabbarinformation;

- (NSMutableArray *) introspectTask;

@end

NS_ASSUME_NONNULL_END
        