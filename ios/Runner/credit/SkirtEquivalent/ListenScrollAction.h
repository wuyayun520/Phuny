#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ListenScrollAction : NSObject

@property (nonatomic) NSString * strokeStatus;

+ (instancetype) listenScrollActionWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) canUpdateCompletion;

- (NSMutableDictionary *) fragmentMethod;

- (int) shouldPrepareCoordinator;

- (NSMutableSet *) shouldStartPageView;

- (NSMutableArray *) deferredCompleter;

@end

NS_ASSUME_NONNULL_END
        