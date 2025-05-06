#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DismissSemanticsDecorator : NSObject

@property (nonatomic) NSMutableArray * shouldHandleWorkflow;

@property (nonatomic) NSString * rectangleFormat;

@property (nonatomic) NSString * associatedWorkflow;

+ (instancetype) dismissSemanticsdecoratorWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) enabledDisclaimer;

- (NSMutableDictionary *) pinchableDescriptor;

- (int) bitrateInset;

- (NSMutableSet *) titlerotation;

- (NSMutableArray *) desktopBehavior;

@end

NS_ASSUME_NONNULL_END
        