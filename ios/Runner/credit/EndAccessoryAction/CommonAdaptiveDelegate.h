#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CommonAdaptiveDelegate : NSObject

@property (nonatomic) NSMutableDictionary * visibleChannels;

@property (nonatomic) NSMutableDictionary * scrollableLocalization;

@property (nonatomic) NSMutableDictionary * shouldFormatGate;

@property (nonatomic) NSMutableArray * linkerEdge;

+ (instancetype) commonAdaptiveDelegateWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) ignoredProvision;

- (NSMutableDictionary *) canEmitGram;

- (int) navigationopacity;

- (NSMutableSet *) customVolume;

- (NSMutableArray *) nextSizedBox;

@end

NS_ASSUME_NONNULL_END
        