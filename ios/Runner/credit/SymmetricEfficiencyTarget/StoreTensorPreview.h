#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface StoreTensorPreview : NSObject

@property (nonatomic) int responsiveListener;

@property (nonatomic) NSMutableArray * concreteSorter;

+ (instancetype) storeTensorPreviewWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) actionHead;

- (NSMutableDictionary *) shouldFormatTask;

- (int) newestGroup;

- (NSMutableSet *) shouldTransformView;

- (NSMutableArray *) notifierAction;

@end

NS_ASSUME_NONNULL_END
        