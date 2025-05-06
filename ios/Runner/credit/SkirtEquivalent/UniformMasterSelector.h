#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UniformMasterSelector : NSObject

@property (nonatomic) int navigatepoint;

@property (nonatomic) NSMutableDictionary * nextCharacter;

+ (instancetype) uniformMasterSelectorWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) resolveGrid;

- (NSMutableDictionary *) inheritedStateful;

- (int) canAnimateScale;

- (NSMutableSet *) showCosine;

- (NSMutableArray *) cardLevel;

@end

NS_ASSUME_NONNULL_END
        