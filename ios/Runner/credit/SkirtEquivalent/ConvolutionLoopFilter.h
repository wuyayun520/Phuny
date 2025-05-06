#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ConvolutionLoopFilter : NSObject

@property (nonatomic) NSMutableSet * shouldCancelSpot;

+ (instancetype) convolutionLoopFilterWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) normalKernel;

- (NSMutableDictionary *) currentmatrix;

- (int) blocschema;

- (NSMutableSet *) buildbuilder;

- (NSMutableArray *) hashJob;

@end

NS_ASSUME_NONNULL_END
        