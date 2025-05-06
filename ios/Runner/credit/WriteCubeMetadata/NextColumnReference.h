#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface NextColumnReference : NSObject

@property (nonatomic) int rowType;

+ (instancetype) nextColumnReferenceWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) autoData;

- (NSMutableDictionary *) transitionMemento;

- (int) symbolactionformat;

- (NSMutableSet *) persistentConfiguration;

- (NSMutableArray *) canvasHue;

@end

NS_ASSUME_NONNULL_END
        