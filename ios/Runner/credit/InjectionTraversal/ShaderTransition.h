#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ShaderTransition : NSObject

@property (nonatomic) int permanentAmortization;

+ (instancetype) shaderTransitionWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) expandedOrigin;

- (NSMutableDictionary *) cloneDescription;

- (int) discoverView;

- (NSMutableSet *) fusedReplica;

- (NSMutableArray *) consultativeProject;

@end

NS_ASSUME_NONNULL_END
        