#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface InstructionParticle : NSObject

@property (nonatomic) NSString * eagerScheduler;

+ (instancetype) instructionParticleWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) managerRotation;

- (NSMutableDictionary *) reflectResource;

- (int) shouldReplaceMovement;

- (NSMutableSet *) shouldSkipSymbol;

- (NSMutableArray *) globalStrength;

@end

NS_ASSUME_NONNULL_END
        