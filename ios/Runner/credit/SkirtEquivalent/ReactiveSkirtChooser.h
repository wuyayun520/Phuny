#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ReactiveSkirtChooser : NSObject

@property (nonatomic) int processorinterval;

+ (instancetype) reactiveSkirtChooserWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) baselineOrigin;

- (NSMutableDictionary *) playbackFunction;

- (int) receiverStatus;

- (NSMutableSet *) oncaptionchanged;

- (NSMutableArray *) pushVariant;

@end

NS_ASSUME_NONNULL_END
        