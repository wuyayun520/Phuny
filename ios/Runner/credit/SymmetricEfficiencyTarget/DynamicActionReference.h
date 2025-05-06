#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DynamicActionReference : NSObject

@property (nonatomic) NSMutableDictionary * temporaryResult;

@property (nonatomic) NSString * crudeWorkflow;

@property (nonatomic) NSString * priorScale;

+ (instancetype) dynamicActionReferenceWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) providermechanism;

- (NSMutableDictionary *) defaultspot;

- (int) requiredStateful;

- (NSMutableSet *) otherSine;

- (NSMutableArray *) shearError;

@end

NS_ASSUME_NONNULL_END
        