#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UpReferenceMatrix : NSObject

@property (nonatomic) int mediaquerySkewY;

+ (instancetype) upReferenceMatrixWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) shouldNotifyMediaQuery;

- (NSMutableDictionary *) configureresolver;

- (int) canEmitMaterial;

- (NSMutableSet *) publicNotifier;

- (NSMutableArray *) shouldUnbindSubpixel;

@end

NS_ASSUME_NONNULL_END
        