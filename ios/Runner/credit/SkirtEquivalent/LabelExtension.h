#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface LabelExtension : NSObject

@property (nonatomic) int managerTransparency;

+ (instancetype) labelExtensionWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) currentConfiguration;

- (NSMutableDictionary *) easyManager;

- (int) shouldObserveFuture;

- (NSMutableSet *) promiseOrientation;

- (NSMutableArray *) easyProgressBar;

@end

NS_ASSUME_NONNULL_END
        