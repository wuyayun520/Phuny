#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface StatefulImageFactory : NSObject

@property (nonatomic) NSMutableDictionary * similaranimation;

@property (nonatomic) NSMutableDictionary * columnStyle;

@property (nonatomic) int shouldPersistRichText;

+ (instancetype) statefulImageFactoryWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) matrixInterpreter;

- (NSMutableDictionary *) displayablePoint;

- (int) canCacheSlider;

- (NSMutableSet *) shouldunbindstateful;

- (NSMutableArray *) sizedboxOpacity;

@end

NS_ASSUME_NONNULL_END
        