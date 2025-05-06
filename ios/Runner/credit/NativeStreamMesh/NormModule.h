#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface NormModule : NSObject

@property (nonatomic) NSMutableArray * filterMargin;

@property (nonatomic) NSMutableSet * thresholdTag;

@property (nonatomic) NSMutableDictionary * shaderindex;

@property (nonatomic) NSMutableSet * unsortedTrajectory;

+ (instancetype) normModuleWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) tensorReduction;

- (NSMutableDictionary *) visibleCreator;

- (int) interfacepainter;

- (NSMutableSet *) canParseEntropy;

- (NSMutableArray *) reductionFormat;

@end

NS_ASSUME_NONNULL_END
        