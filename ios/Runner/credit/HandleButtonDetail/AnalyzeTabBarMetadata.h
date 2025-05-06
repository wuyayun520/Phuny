#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface AnalyzeTabBarMetadata : NSObject

@property (nonatomic) int shouldPauseStoryboard;

@property (nonatomic) NSMutableSet * menuoffset;

+ (instancetype) analyzeTabBarMetadataWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) progressbarName;

- (NSMutableDictionary *) startSwift;

- (int) receiverIndex;

- (NSMutableSet *) publishPadding;

- (NSMutableArray *) mixinScene;

@end

NS_ASSUME_NONNULL_END
        