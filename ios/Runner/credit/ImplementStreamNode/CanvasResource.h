#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CanvasResource : NSObject

@property (nonatomic) NSMutableDictionary * firstImage;

@property (nonatomic) NSMutableDictionary * robustEvaluation;

+ (instancetype) canvasResourceWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) toleranceKind;

- (NSMutableDictionary *) reusableInterface;

- (int) borderInset;

- (NSMutableSet *) transformColumn;

- (NSMutableArray *) sequentialCycle;

@end

NS_ASSUME_NONNULL_END
        