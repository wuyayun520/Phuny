#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MeasureDescriptorEntity : NSObject

@property (nonatomic) NSMutableArray * parallelShader;

+ (instancetype) measureDescriptorEntityWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) disabledEfficiency;

- (NSMutableDictionary *) shouldEmitNib;

- (int) receiveIntensity;

- (NSMutableSet *) entropyRate;

- (NSMutableArray *) isContraction;

@end

NS_ASSUME_NONNULL_END
        