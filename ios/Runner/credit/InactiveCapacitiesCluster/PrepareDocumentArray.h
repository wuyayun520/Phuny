#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface PrepareDocumentArray : NSObject

@property (nonatomic) int thresholdSize;

@property (nonatomic) NSMutableSet * futureFlags;

@property (nonatomic) NSMutableDictionary * anchorState;

@property (nonatomic) NSString * shouldDeserializeChannels;

@property (nonatomic) int itemShape;

+ (instancetype) prepareDocumentArrayWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) displayableDuration;

- (NSMutableDictionary *) scopeIndex;

- (int) touchLeft;

- (NSMutableSet *) canStartBloc;

- (NSMutableArray *) decodeManager;

@end

NS_ASSUME_NONNULL_END
        